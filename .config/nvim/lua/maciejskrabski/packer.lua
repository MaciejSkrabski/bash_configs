-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-fugitive'
  use 'neovim/nvim-lspconfig'
  use 'rafi/awesome-vim-colorschemes'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
end)
