vim.g.mapleader = " "

vim.g.netrw_liststyle = 3

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>fo", function() vim.lsp.buf.format({ async = true }) end)

vim.keymap.set("n", "<leader>oo", ':MetalsOrganizeImports<CR>', { noremap = true })

vim.keymap.set("n", "<C-p>", vim.lsp.buf.signature_help)

vim.keymap.set('n', '<leader>tc', ':tabc<CR>', { noremap = true })

vim.keymap.set('n', '<esc>', ':noh<return><esc>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>gl", ':Gclog<CR>', { noremap = true })
vim.keymap.set("n", "<leader>gs", ':G<CR>', { noremap = true })
