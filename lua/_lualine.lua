local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  print "Lualine module not found..."
	return
end

lualine.setup({
	options = {
		icons_enabled = true,
		section_separators = '',
		component_separator = '',
		theme = 'onedark',
	}
})
