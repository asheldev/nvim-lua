vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})
vim.keymap.set('', '<leader>q', '<cmd>exit<cr>', {desc = 'Exit'})
vim.keymap.set({'n', 'x'}, 'cp', '"+y"')
vim.keymap.set({'n', 'x'}, 'cv', '"+p"')
vim.keymap.set({'n', 'x'}, 'x', '_x')
-- NVIM TREE
vim.keymap.set('n', '<C-b>', '<cmd>NvimTreeToggle<cr>', {desc = 'Explorer'})

-- GOOGLE EXECUTOR
-- vim.api.nvim_set_keymap('n', '<leader>t', ':ExecutorRun<CR>', {desc = 'Command'})
-- vim.api.nvim_set_keymap('n', '<leader>vd', ':ExecutorToggleDetail<CR>', {desc = 'CommandDetail'})

-- TELESCOPE
