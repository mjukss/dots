vim.g.mapleader = " "

vim.g.netrw_liststyle = 3

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>fo", function()
  vim.lsp.buf.format({ async = true })
end)

vim.keymap.set("n", "<C-p>", vim.lsp.buf.signature_help)

vim.keymap.set('n', '<Space>', ',', {noremap = true})
