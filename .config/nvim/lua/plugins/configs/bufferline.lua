require('bufferline').setup {
    options = {
        numbers = "ordinal",
        diagnostics = "coc",
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "(" .. count .. ")"
        end,
        offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left" } },
        color_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "slant",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'id'
    }
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Tab>', ':BufferLineCycleNext<CR>', opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', opts)
map('n', '<C-d>', ':Bdelete<CR>', opts)
