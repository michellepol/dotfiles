return {
    "nvim-lualine/lualine.nvim",
    version = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'filename'},
                lualine_c = {'diagnostics', 'g:coc_status', 'b:coc_current_function'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_z = {'location'}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
}
