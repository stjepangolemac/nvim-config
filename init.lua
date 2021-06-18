_G.sgolem = {}

-- Map leader to space
vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

-- Auto install packer.nvim if not exists
local first_start = false
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  first_start = true
end

vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost init.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Install plugins if first start
if first_start == true then
    require('plugins')
    vim.cmd [[PackerInstall]]
end

-- Load plugins
require('plugins')

-- Sensible defaults
require('settings')

-- Key mappings
require('keymappings')

-- Plugins configuration
require('config')

-- LSP Configuration
require('lsp_config')
