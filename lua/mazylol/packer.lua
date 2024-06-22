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
        branch = 'v2.x',
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

end)
