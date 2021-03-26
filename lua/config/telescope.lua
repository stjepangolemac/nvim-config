local utils = require('utils')

utils.map('n', '<leader>f', '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>g', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>b', '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>h', '<cmd>Telescope help_tags<cr>')
