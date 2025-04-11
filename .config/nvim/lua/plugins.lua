return {
    -- UI --
    { 'nvim-tree/nvim-web-devicons' },

    {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    --config = function() require "plugins.markdown" end,
    -- Lazy load after treesitter
    event = "VeryLazy",
    },

    {
        'navarasu/onedark.nvim',
        config = function() require "plugins.configs.onedark" end,
        priority = 1000,  --High priority to load early
    },

    -- file tree
    {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    --config = function() require "plugins.configs.nvimtree" end,
    cmd = { "NvimTreeToggle", "NvimTreeOpen" }, -- Lazy load on commands
    },

    -- status line
    {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    --config = function() require('lualine').setup() end,
    event = "VeryLazy",
    },

    -- buffers
    {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    --config = function() require "plugins.configs.bufferline" end,
    event = "VeryLazy",
    },
    { 'moll/vim-bbye',              cmd = "Bdelete" },

    -- start page
    { 'mhinz/vim-startify',         event = "VimEnter" },

    -- CODE --

    -- auto completion
    not vim.g.vscode and {
    'neoclide/coc.nvim',
    branch = 'release',
    --config = function() require "plugins.configs.coc" end,
    event = "InsertEnter",
    } or nil,

    -- code search
    {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    --config = function() require 'telescope'.setup {} end,
    cmd = "Telescope",
    },
    { 'google/vim-searchindex',                      event = "VeryLazy" },

    -- git support
    { 'lewis6991/gitsigns.nvim',                     event = "VeryLazy" },
    --{ '~/arcadia/junk/a-matveev9/gitsigns.arc.nvim', event = "VeryLazy" },

    -- syntax highlight
    {
    'nvim-treesitter/nvim-treesitter',
    --config = function() require "plugins.configs.treesitter" end,
    event = { "BufRead", "BufNewFile" },
    },

    { 'preservim/nerdcommenter', event = "VeryLazy" }

    --{ 'yetone/avante.nvim',      cmd = "Avante" },
}
