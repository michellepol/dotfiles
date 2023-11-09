local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- General
-- Save on Ctrl + S
map('n', '<C-s>', ':w<CR>',  default_opts)
map('i', '<C-s>', ':w<CR>', default_opts)
map('n', '<C-s>', ':w<CR>',  default_opts)
map('i', '<C-s>', ':w<CR>', default_opts)

-- List code by pages (ctrl + f in classical vim)
map('n', '<Space>', '<PageDown> zz', default_opts)
map('n', '<C-Space>', '<PageUp> zz', default_opts)

-- # Plugins

-- ## Bufferline
-- ### Switching tabs
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

-- ## Telescope
map('n', '<leader>ff', [[ <cmd>lua require('telescope.builtin').find_files()<cr> ]], default_opts)
map('n', '<leader>gs', [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
map('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)

-- ## NvimTree
-- ### OpenTree
map('n', '<C-t>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)
