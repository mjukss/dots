return require("lazy").setup({
  "stevearc/oil.nvim",
  "lewis6991/gitsigns.nvim",
  "nvim-treesitter/playground",

  { "tpope/vim-fugitive",              lazy = false },
  { "theprimeagen/harpoon",            branch = "harpoon2",                       dependencies = { "nvim-lua/plenary.nvim" } },
  { "rose-pine/neovim",                name = "rose-pine" },
  { "nvim-telescope/telescope.nvim",   tag = "0.1.4",                             dependencies = { "nvim-lua/plenary.nvim" } },
  { "scalameta/nvim-metals",           dependencies = { "nvim-lua/plenary.nvim" } },

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "neovim/nvim-lspconfig",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
    }
  }
})
