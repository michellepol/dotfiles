return {
    -- UI --
    {"nvim-tree/nvim-web-devicons"},
    {
        "navarasu/onedark.nvim",
        priority = 1000,
	    event="VimEnter"
    },

    -- file tree --
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        priority = 1001,
	    event="VimEnter"
    },

    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = {"nvim-treesitter", "nvim-tree/nvim-web-devicons"},
        -- Lazy load after treesitter
        event = "VeryLazy"
    },

    -- status line --
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        event = "VeryLazy"
    },

    -- buffers --
    {
        "akinsho/bufferline.nvim",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        event = "VeryLazy"
    },
    {"moll/vim-bbye", cmd = "Bdelete"},

    -- start page
    {"mhinz/vim-startify", event = "VimEnter"},

    -- auto completion --
    not vim.g.vscode and
        {
            "neoclide/coc.nvim",
            branch = "release",
            event = "InsertEnter"
        } or
        nil,

    -- code search --
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {"nvim-lua/plenary.nvim"},
        cmd = "Telescope"
    },
    {"google/vim-searchindex", event = "VeryLazy"},

    -- git support --
    {"lewis6991/gitsigns.nvim", event = "VeryLazy"},
    --{ '~/arcadia/junk/a-matveev9/gitsigns.arc.nvim', event = "VeryLazy" },

    -- syntax highlight --
    {
        "nvim-treesitter/nvim-treesitter",
        event = {"BufRead", "BufNewFile"}
    },

    -- commenting --
    {"preservim/nerdcommenter", event = "VeryLazy"}
}
