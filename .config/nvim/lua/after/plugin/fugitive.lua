vim.keymap.set("n", "<leader>gl", ':Gclog<CR>', { noremap = true })
vim.keymap.set("n", "<leader>gs", ':G<CR>', { noremap = true })
vim.keymap.set("n", "<leader>gS", function() vim.cmd(':G show ' .. vim.fn.expand('<cword>')) end)

vim.g.fugitive_summary_format = "%cs | %<(20,trunc)%an | %s"

vim.api.nvim_exec([[
  augroup conditional_folding
    autocmd!
    autocmd BufReadPost * if getline(1) =~# '^tree' | setlocal foldmethod=syntax | endif
    autocmd BufReadPost * if getline(1) =~# '^commit' | setlocal foldmethod=syntax | endif
  augroup END
]], false)