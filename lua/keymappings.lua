_G.sgolem.keymappings = {}

local utils = require('utils')

-- Clear highlights
utils.map('n', '<C-l>', '<cmd>noh<CR>')

-- Leave insert mode
utils.map('i', 'jj', '<Esc>')
utils.map('i', 'kk', '<Esc>')
utils.map('i', 'jk', '<Esc>')

-- Buffer control
utils.map('n', '<leader>da', '<cmd>bufdo bd<cr>')
utils.map('n', '<leader>dd', '<cmd>bd<cr>')
utils.map('n', '<leader>p', '<cmd>Format<cr>')

-- Navigate suggestions with tab
local function tab() 
    if vim.fn.pumvisible()
        then return utils.esc("<C-n>")
        else return utils.esc("<Tab>")
    end
end

local function stab() 
    if vim.fn.pumvisible()
        then return utils.esc("<C-n>")
        else return utils.esc("<S-Tab>")
    end
end

utils.map('i', '<expr> <Tab>', 'v:lua.keymappings.tab()', { expr = true, noremap = false })
utils.map('i', '<expr> <S-Tab>', 'v:lua.keymappings.stab()', { expr = true, noremap = false })

utils.map('i', '<Tab>', '<Plug>completion_smart_tab', { expr = true, noremap = true })
utils.map('i', '<S-Tab>', '<Plug>completion_smart_s_tab', { expr = true, noremap = true })

_G.sgolem.keymappings.tab = tab;
_G.sgolem.keymappings.stab = stab;
