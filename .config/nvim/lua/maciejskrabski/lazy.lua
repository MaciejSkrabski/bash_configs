local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

return require('lazy').setup({
  {
    "NeogitOrg/neogit",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required

      -- Only one of these is needed.
      -- "sindrets/diffview.nvim",        -- optional
      "esmuellert/codediff.nvim",      -- optional

      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
      -- "ibhagwan/fzf-lua",              -- optional
      -- "nvim-mini/mini.pick",           -- optional
      -- "folke/snacks.nvim",             -- optional
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
    }
  },
  'neovim/nvim-lspconfig',
  { 'folke/tokyonight.nvim', priority=1000, lazy=false},
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },

  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzf-native.nvim', build='make'}
  },
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'}
})
