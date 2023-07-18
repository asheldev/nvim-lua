return {
  {
    'olimorris/onedarkpro.nvim',
    priority = 1000
  },
	{'nvim-lualine/lualine.nvim'},
	{'williamboman/nvim-lsp-installer'},
	{'neovim/nvim-lspconfig'},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},
	{'nvim-tree/nvim-tree.lua'},
	{'nvim-tree/nvim-web-devicons'},
	{
    'williamboman/mason.nvim',
		build = ':MasonUpdate' -- uncomment after installation
	},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{'saadparwaiz1/cmp_luasnip'},
	{
		'google/executor.nvim',
		dependencies = {
			'MunifTanjim/nui.nvim'
		}
	},
	{
		'aserowy/tmux.nvim',
		config = function() return require("tmux").setup() end
	},
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons'
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.2',
		dependencies = {
			'nvim-lua/plenary.nvim',
		}
	}
}

