vim.g.mapleader = " "

vim.keymap.set('n', '<esc>', ':noh<return><esc>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>tc', ':tabc<CR>', { noremap = true })
vim.keymap.set("n", "<leader>ea", function() vim.diagnostic.setqflist() end)
vim.keymap.set("n", "<leader>ee", function() vim.diagnostic.setqflist({ severity = "E" }) end)
vim.keymap.set("n", "<leader>ew", function() vim.diagnostic.setqflist({ severity = "W" }) end)

vim.keymap.set("n", "<C-w>,", ":vertical resize -10<CR>")
vim.keymap.set("n", "<C-w>.", ":vertical resize +10<CR>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")

vim.keymap.set("n", "q:", "<nop>")

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
