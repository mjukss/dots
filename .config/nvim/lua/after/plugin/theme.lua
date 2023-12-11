vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function() vim.highlight.on_yank() end,
})


vim.cmd("colorscheme rose-pine")
vim.cmd("highlight Normal guibg=#121212 ctermbg=235")
vim.cmd("highlight SignColumn guibg=NONE ctermbg=235")
