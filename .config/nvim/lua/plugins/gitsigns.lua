return {
    "lewis6991/gitsigns.nvim",
    version = "*",
    config = function()
        vim.api.nvim_set_keymap('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
        vim.api.nvim_set_keymap('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})
        vim.api.nvim_set_keymap('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', {})
        vim.api.nvim_set_keymap('v', '<leader>hs', ':Gitsigns stage_hunk<CR>', {})
        vim.api.nvim_set_keymap('v', '<leader>hr', ':Gitsigns reset_hunk<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>', {})
    end
}
