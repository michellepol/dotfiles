vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- popular colorschemes
    use 'rafi/awesome-vim-colorschemes'

    -- file tree
    use { 'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons',},
        config = function() require "plugins.configs.nvimtree" end,
    }

    -- auto completion
    use {'neoclide/coc.nvim', branch = 'release',
    	config = function() require "plugins.configs.coc" end
    }

    -- status line
    use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
        require('lualine').setup()
    end, }

    -- buffers
    use {'akinsho/bufferline.nvim',
    	requires = {'kyazdani42/nvim-web-devicons',},
    	config = function() require "plugins.configs.bufferline" end,
    }

    -- code search
    use { 'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require'telescope'.setup {} end, }
    use 'google/vim-searchindex'

    -- git support
    use 'lewis6991/gitsigns.nvim'
    use '~/arcadia/junk/a-matveev9/gitsigns.arc.nvim'

    -- start page
    use 'mhinz/vim-startify'
end)
