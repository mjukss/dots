local metals_config = require("metals").bare_config()

metals_config.settings = {
  showImplicitArguments = true,
  showImplicitConversionsAndClasses = true,
  showInferredType = true
}

local capabilities = require("cmp_nvim_lsp").default_capabilities()

metals_config.capabilities = capabilities

metals_config.on_attach = function(client, bufnr)
  vim.keymap.set("n", "<leader>tt", require("metals.tvp").toggle_tree_view)
  vim.keymap.set("n", "<leader>tr", require("metals.tvp").reveal_in_tree)

  vim.keymap.set("n", "<leader>mc", require("telescope").extensions.metals.commands)

  -- vim.keymap.set("n", "<leader>mts", function()
  -- require("metals").toggle_setting("showImplicitArguments")
  -- end)


  vim.keymap.set('n', '<leader>pj', function()
    require("telescope.builtin").live_grep({ cwd = '.metals/readonly/dependencies' })
  end)

  vim.o.shortmess = string.gsub(vim.o.shortmess, "F", "") .. "c"
end


-- metals_config.init_options.statusBarProvider = "on"

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "scala", "sbt", "java" },
  callback = function()
    require("metals").initialize_or_attach(metals_config)
  end,
  group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
  ,
})
