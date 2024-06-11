-- Local variables --

-- execute Vim commands
local cmd = vim.cmd
-- execute Vimscript
local exec = vim.api.nvim_exec
-- global variables
local g = vim.g
-- global/buffer/windows-scoped options
local opt = vim.opt

-- Global variables --

-- Python binary for neovim python3 integration
g.python3_host_prog="/usr/bin/python3"

-- Main Settings --

-- ??? --
opt.splitright = true
opt.splitbelow = true
cmd([[
filetype indent plugin on
syntax enable
]])

-- Cursor in middle of screen, scrolls begin after reaching middle of a screen
opt.scrolloff=999

-- Title of terminal tab from vim
opt.title = true

-- highlight
-- cursor row
opt.cursorline = true
-- column 80
opt.colorcolumn="80"

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

-- save last edit line
cmd [[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd BufWritePre * :%s/\s\+$//e
]]

vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- 24-bit RGB colors
vim.opt.termguicolors = true
-- brigthness of colorscheme space-vim-dark g.space_vim_dark_background = 234
cmd 'colorscheme space-vim-dark'

-- Plugins --

-- Need to for nerd tree because of concurrent state
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

