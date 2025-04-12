return {
    "neoclide/coc.nvim",
    version = "*",
    branch = "release",
    event = "InsertEnter",
    config = function()
        -- Some servers have issues with backup files, see #649
        vim.opt.backup = false
        vim.opt.writebackup = false

        -- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
        -- delays and poor user experience
        vim.opt.updatetime = 300

        -- Always show the signcolumn, otherwise it would shift the text each time
        -- diagnostics appeared/became resolved
        vim.opt.signcolumn = "yes"

        -- Add (Neo)Vim's native statusline support
        vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

        -- Setup formatexpr specified filetype(s)
        vim.api.nvim_create_autocmd("FileType", {
            group = vim.api.nvim_create_augroup("CocGroup", {}),
            pattern = "typescript,json",
            command = "setl formatexpr=CocAction('formatSelected')",
            desc = "Setup formatexpr specified filetype(s)."
        })

        -- Update signature help on jump placeholder
        vim.api.nvim_create_autocmd("User", {
            group = vim.api.nvim_create_augroup("CocGroup", {}),
            pattern = "CocJumpPlaceholder",
            command = "call CocActionAsync('showSignatureHelp')",
            desc = "Update signature help on jump placeholder"
        })

        -- Add `:Format` command to format current buffer
        vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

        -- Add `:Fold` command to fold current buffer
        vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", { nargs = '?' })

        -- Add `:OR` command for organize imports of the current buffer
        vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})
    end
}
