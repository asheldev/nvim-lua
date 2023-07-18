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
lspconfig.clangd.setup({})
lspconfig.pylsp.setup({})

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

-- TMUX.nvim
require('tmux').setup()

-- Bufferline
require('bufferline').setup({
	options = {
		diagnostics = 'nvim_lsp',
		offsets = {
			{
				filetype = 'NvimTree',
				text = 'Project Files',
				text_align = 'center',
				separator = true,
        highlight = 'Directory',
			}
		},
		color_icons = true,
		separator_style = 'slant'
	}
})

-- Telescope
require('telescope').setup()
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
