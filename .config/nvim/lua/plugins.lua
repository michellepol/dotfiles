-- other plugins automatically loaded by lazy vim from plugins folder
return {
    -- UI --
    {"nvim-tree/nvim-web-devicons"},

    -- buffers --
    {"moll/vim-bbye", cmd = "Bdelete"},

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

    {"preservim/nerdcommenter", event = "VeryLazy"}
}
