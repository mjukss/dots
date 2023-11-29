local lsp = require('lsp-zero').preset({})


lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })

  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
  vim.keymap.set("n", "L", vim.lsp.buf.signature_help)
  vim.keymap.set("n", "<leader>fo", function() vim.lsp.buf.format({ async = true }) end)
end)

lsp.setup_servers({ 'tsserver', 'eslint' })

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
