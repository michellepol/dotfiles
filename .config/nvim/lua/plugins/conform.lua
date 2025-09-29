return {
    'stevearc/conform.nvim',
    opts={
        formatters_by_ft = {
            lua = { "stylua" },
            go = { "goimports", "gofmt" },
            python= { "ruff_fix", "ruff_format"},
            cpp= {"clang-format"},
        },
        formatters = {
            clang_format = {
              prepend_args = { '--style=file', '--fallback-style=Google' },
            },
        }
    },
    config = function ()
        vim.api.nvim_create_user_command("Format", function(args)
            local range = nil
            if args.count ~= -1 then
              local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
              range = {
                start = { args.line1, 0 },
                ["end"] = { args.line2, end_line:len() },
              }
            end
            require("conform").format({ async = true, lsp_format = "fallback", range = range })
        end, { range = true })
    end
}
