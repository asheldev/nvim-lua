require('config')
require('keymaps')
require('plugins')

vim.cmd("colorscheme onedark")

-- PLUGINS:
require('lualine').setup({
	options = {
		icons_enabled = true,
		section_separators = '',
		component_separators = '',
		theme = 'onedark',
	}
})

require('nvim-tree').setup()

-- LSP SERVERS
require('mason').setup({})
local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup({})
lspconfig.tsserver.setup({})

-- LSP Completion
local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
  	['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
	sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  	{ name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup({
	capabilities = capabilities
})
lspconfig.tsserver.setup({
	capabilities = capabilities
})

-- Google Executor
require('executor').setup({
	use_split = false,
	popup = {
		width = math.floor(vim.o.columns * 3/5),
   	height = vim.o.lines - 20,
	}
})
