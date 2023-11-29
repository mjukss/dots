vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<esc>', ':noh<return><esc>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>tc', ':tabc<CR>', { noremap = true })

vim.keymap.set("n", "<leader>ea", function() vim.diagnostic.setqflist() end)
vim.keymap.set("n", "<leader>ee", function() vim.diagnostic.setqflist({ severity = "E" }) end)
vim.keymap.set("n", "<leader>ew", function() vim.diagnostic.setqflist({ severity = "W" }) end)

vim.keymap.set("n", "<C-w>,", ":vertical resize -10<CR>")
vim.keymap.set("n", "<C-w>.", ":vertical resize +10<CR>")
