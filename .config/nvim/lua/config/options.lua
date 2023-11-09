local opt = vim.opt

-- Main Settings --
opt.foldmethod = "manual"

-- ??? --
opt.splitright = true
opt.splitbelow = true
-- views can only be fully collapsed with the global statusline
opt.laststatus = 3

--vim.api.nvim_set_keymap("russian-jcukenwin")

-- cursor in middle of screen, scrolls begin after reaching middle of a screen
opt.scrolloff = 999
-- disable mouse at all
vim.opt.mouse = ""

-- title of terminal tab from vim
opt.title = true

-- highlight
-- cursor row
opt.cursorline = true
-- column 120
opt.colorcolumn = "120"

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

-- 24-bit RGB colors
opt.termguicolors = true

vim.diagnostic.config({
    virtual_text = true,
    signs = false,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})
