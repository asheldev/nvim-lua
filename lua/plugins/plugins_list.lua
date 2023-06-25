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
}
