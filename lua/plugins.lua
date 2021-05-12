return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Syntax
  use { 'nvim-treesitter/nvim-treesitter' }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'nvim-lua/lsp_extensions.nvim' }
  use { 'nvim-lua/completion-nvim' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }

  -- Rust development
  use { 'simrat39/rust-tools.nvim' }

  -- Git
  use { 'tpope/vim-fugitive' }
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Tree viewer
  use { 'kyazdani42/nvim-tree.lua' } 

  -- Utilities
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-commentary' }

  -- Color schemes
  use { 'ayu-theme/ayu-vim' }
  use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}

end)
