return require("lazy").setup({
  "lewis6991/gitsigns.nvim",
  "nvim-treesitter/playground",
  {"tpope/vim-fugitive", lazy = false},
  {"theprimeagen/harpoon", branch = "harpoon2"},

  { "rose-pine/neovim",                version = "rose-pine" },
  { "nvim-telescope/telescope.nvim",   tag = "0.1.4",                             dependencies = { "nvim-lua/plenary.nvim" } },
  { "scalameta/nvim-metals",           dependencies = { "nvim-lua/plenary.nvim" } },

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional
      { "neovim/nvim-lspconfig" },             -- Required
      { "hrsh7th/nvim-cmp" },                  -- Required
      { "hrsh7th/cmp-nvim-lsp" },              -- Required
      { "L3MON4D3/LuaSnip" }                   -- Required
    }
  }
})
