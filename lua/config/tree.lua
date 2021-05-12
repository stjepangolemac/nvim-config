local utils = require('utils')

vim.g['nvim_tree_side'] = 'right'
vim.g['nvim_tree_auto_open'] = 0

utils.map('n', '<C-n>', '<cmd>NvimTreeToggle<cr>')
utils.map('n', '<leader>r', '<cmd>NvimTreeRefresh<cr>')
utils.map('n', '<leader>n', '<cmd>NvimTreeFindFile<cr>')
