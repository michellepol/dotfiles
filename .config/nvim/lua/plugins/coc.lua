return {
    "neoclide/coc.nvim",
    event = "BufEnter",
    cond = vim.g.vscode == false or vim.g.vscode == nil,
    build='npm ci',
    config = function()
        -- Some servers have issues with backup files, see #649
        vim.opt.backup = false
        vim.opt.writebackup = false

        -- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable delays and poor user experience
        vim.opt.updatetime = 300
        -- Always show the signcolumn, otherwise it would shift the text each time
        -- diagnostics appeared/became resolved
        vim.opt.signcolumn = "yes"

        -- Add (Neo)Vim's native statusline support
        vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

        -- Update signature help on jump placeholder
        vim.api.nvim_create_autocmd("User", {
            group = vim.api.nvim_create_augroup("CocGroup", {}),
            pattern = "CocJumpPlaceholder",
            command = "call CocActionAsync('showSignatureHelp')",
            desc = "Update signature help on jump placeholder"
        })

        -- Add `:Fold` command to fold current buffer
        vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", { nargs = '?' })

        -- Add `:OR` command for organize imports of the current buffer
        vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

        local keyset = vim.keymap.set
    end
}
