local utils = require('utils')
local actions = require('telescope.actions')

require('telescope').setup{
    defaults = {
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,

        mappings = {
            i = {
                ['<esc>'] = actions.close,
            },
        },
    }
}

utils.map('n', '<leader>f', '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>g', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>b', '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>h', '<cmd>Telescope help_tags<cr>')
