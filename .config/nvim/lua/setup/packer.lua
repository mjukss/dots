vim.cmd "packadd packer.nvim"

return require("packer").startup(function(use)
  use { "wbthomason/packer.nvim" }

  use { "rose-pine/neovim", as = "rose-pine" }
  use { "lewis6991/gitsigns.nvim" }
  use { "nvim-treesitter/playground" }
  use { "tpope/vim-fugitive" }
  use { "theprimeagen/harpoon" }

  use { "nvim-telescope/telescope.nvim", tag = "0.1.4", requires = { "nvim-lua/plenary.nvim" } }
  use { "scalameta/nvim-metals", requires = { "nvim-lua/plenary.nvim" } }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = require("nvim-treesitter.install").update({ with_sync = true })
  }

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      { 'neovim/nvim-lspconfig' },                                                                -- Required
      { 'williamboman/mason.nvim',          run = function() pcall(vim.cmd, 'MasonUpdate') end }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' },                                                    -- Optional
      { "neovim/nvim-lspconfig" },                                                                -- Required
      { "hrsh7th/nvim-cmp" },                                                                     -- Required
      { "hrsh7th/cmp-nvim-lsp" },                                                                 -- Required
      { "L3MON4D3/LuaSnip" }                                                                      -- Required
    }
  }
end)
