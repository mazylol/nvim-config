vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use { "catppuccin/nvim", as = "catppuccin" }

    use {'nyoom-engineering/oxocarbon.nvim'}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        'ThePrimeagen/harpoon',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

	use('mbbill/undotree')

	use('tpope/vim-fugitive')

    use("windwp/nvim-ts-autotag")

	use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use('tpope/vim-surround')
    use('jiangmiao/auto-pairs')
    use('andweeb/presence.nvim')
    use('sbdchd/neoformat')

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use('timonv/vim-cargo')

    use {
        "pcolladosoto/tinygo.nvim",
        config = function() require("tinygo").setup() end
    }

    use({
    'MeanderingProgrammer/markdown.nvim',
    as = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
    -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({})
    end,
    })

    use("chrisbra/sudoedit.vim")
end)
