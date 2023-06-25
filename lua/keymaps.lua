vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})
vim.keymap.set('', '<leader>q', '<cmd>exit<cr>', {desc = 'Exit'})
vim.keymap.set({'n', 'x'}, 'cp', '"+y"')
vim.keymap.set({'n', 'x'}, 'cv', '"+p"')
vim.keymap.set({'n', 'x'}, 'x', '_x')
vim.keymap.set('n', '<C-b>', '<cmd>NvimTreeToggle<cr>', {desc = 'Explorer'})
