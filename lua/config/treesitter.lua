require'nvim-treesitter.configs'.setup {
    ensure_installed = { "rust", "toml", "php", "lua" },

    highlight = {
        enable = true,

        custom_captures = {},
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },

    indent = {
        enable = true
    }
}

-- This doesn't work with nvim-telescope for now, see https://github.com/nvim-telescope/telescope.nvim/issues/559
-- vim.api.nvim_exec([[
--     set foldmethod=expr
--     set foldexpr=nvim_treesitter#foldexpr()
-- ]], true)
