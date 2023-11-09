local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- General
-- Save on Ctrl + S
map('n', '<C-s>', ':w<CR>', default_opts)
map('i', '<C-s>', ':w<CR>', default_opts)

-- List code by pages (ctrl + f in classical vim)
map('n', 'sd', '<PageDown> zz', default_opts)
map('n', 'su', '<PageUp> zz', default_opts)

-- Disable arrows and touchpad as well
map("", "<Up>", "<Nop>", { noremap = false })
map("", "<Down>", "<Nop>", { noremap = false })

-- Plugins

-- Telescope
map('n', '<leader>ff', [[ <cmd>lua require('telescope.builtin').find_files()<cr> ]], default_opts)
map('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)

-- BufferLine
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
map('n', '<C-d>', ':Bdelete<CR>', default_opts)

-- NvimTree
map('n', '<C-t>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)

-- Coc
require("config.coc_keymaps")
