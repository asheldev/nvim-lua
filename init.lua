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
