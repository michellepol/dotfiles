vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- UI --

    -- popular color schemes
    use 'rafi/awesome-vim-colorschemes'

    -- file tree
    use { 'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function() require "plugins.configs.nvimtree" end,
    }

    -- status line
    use { 'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end, }

    -- buffers
    use { 'akinsho/bufferline.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function() require "plugins.configs.bufferline" end,
    }
    use 'moll/vim-bbye'

    -- start page
    use 'mhinz/vim-startify'

    -- CODE --

    -- auto completion
    use { 'neoclide/coc.nvim', branch = 'release',
        config = function() require "plugins.configs.coc" end
    }

    -- code search
    use { 'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = function() require 'telescope'.setup {} end, }
    use 'google/vim-searchindex'

    -- git support
    use 'lewis6991/gitsigns.nvim'
    use '~/arcadia/junk/a-matveev9/gitsigns.arc.nvim'

    -- syntax highlight
    use { 'nvim-treesitter/nvim-treesitter',
        config = function() require "plugins.configs.treesitter" end,
    }

    -- comments
    use { 'preservim/nerdcommenter' }
end)
