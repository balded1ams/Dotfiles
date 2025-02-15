-- insures lazy is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- include plugins and their config
require('plugins')
require('plug_config.treesitter')
require('plug_config.colors')
require('plug_config.undotree')
require('plug_config.telescope')
require('plug_config.fugitive')
require('plug_config.lsp_config.lsp-cmp')
require('plug_config.lsp_config.lsp-config')
require('plug_config.lsp_config.mason')
require('plug_config.lsp_config.lsp-signature')
require('plug_config.lsp_config.goto-preview')
require('plug_config.gitsigns')
require('plug_config.autosave')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


require('Neon')
