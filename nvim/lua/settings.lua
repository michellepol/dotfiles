-- Variables --

-- execute Vim commands
local cmd = vim.cmd
-- execute Vimscript
local exec = vim.api.nvim_exec
-- global variables
local g = vim.g
-- global/buffer/windows-scoped options
local opt = vim.opt


-- Main Settings --

-- Компактный вид у тагбара и Отк. сортировка по имени у тагбара
g.tagbar_compact = 1
g.tagbar_sort = 0
g.python3_host_prog="/usr/bin/python3"
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз
-- Cursor in middle of screen
opt.so=999
opt.title = true

-- highlight cursor row
opt.cursorline = true
-- rows numeration
opt.number = true
-- relative rows numberation
opt.relativenumber = true
-- possobility to undo file
opt.undofile = true
-- highlight column 80
opt.colorcolumn="80"
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

cmd([[
filetype indent plugin on
syntax enable
]])

-- Запоминает где nvim последний раз редактировал файл
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


-- Theme --

-- 24-bit RGB colors
vim.opt.termguicolors = true
-- brigthness of colorscheme space-vim-dark
g.space_vim_dark_background = 234
cmd 'colorscheme space-vim-dark'


-- Plugins --

-- Need to for nerd tree because of concurrent state
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

