-- Local variables --

-- global variables
local g = vim.g
-- global/buffer/windows-scoped options
local opt = vim.opt

-- Global variables --

-- python binary for neovim python3 integration
g.python3_host_prog = "/usr/bin/python3"

-- Main Settings --
opt.foldmethod = "manual"

-- ??? --
opt.splitright = true
opt.splitbelow = true

--vim.api.nvim_set_keymap("russian-jcukenwin")

-- cursor in middle of screen, scrolls begin after reaching middle of a screen
opt.scrolloff = 999

-- title of terminal tab from vim
opt.title = true

-- highlight
-- cursor row
opt.cursorline = true
-- column 80
opt.colorcolumn = "80"

-- rows numeration
opt.number = true
-- relative rows numberation
opt.relativenumber = true
-- possobility to undo file
opt.undofile = true
-- use spaces instead of tabs
opt.expandtab = true
-- shift 4 spaces when tab
opt.shiftwidth = 4
-- 1 tab == 4 spaces
opt.tabstop = 4
-- autoindent new lines
opt.smartindent = true

-- space is leader button
g.mapleader = " "

vim.diagnostic.config({
    virtual_text = true,
    signs = false,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- 24-bit RGB colors
vim.opt.termguicolors = true
-- colorscheme
require('onedark').load()

-- Plugins --

-- need to for nerd tree because of concurrent state
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- highlight copied text
vim.cmd([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]])

-- Save last edit line
vim.cmd([[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd BufWritePre * :%s/\s\+$//e
]])

vim.cmd([[
filetype indent plugin on
syntax enable
]])
