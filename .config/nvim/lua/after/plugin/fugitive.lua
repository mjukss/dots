vim.keymap.set("n", "<leader>gl", ":Gclog<CR>", { noremap = true })
vim.keymap.set("n", "<leader>gs", ":G<CR>", { noremap = true })
vim.keymap.set("n", "<leader>gS", function() vim.cmd(":G show " .. vim.fn.expand("<cword>")) end)
vim.keymap.set("n", "<leader>gh", ":Git log --patch -- %|only<CR>", { noremap = true })

vim.g.fugitive_summary_format = "%cs | %<(20,trunc)%an | %s"

--  vim.api.nvim_exec([[
--    augroup conditional_folding
--      autocmd!
--      autocmd BufReadPost * if getline(1) =~# '^tree' | setlocal foldmethod=syntax | endif
--      autocmd BufReadPost * if getline(1) =~# '^commit' | setlocal foldmethod=syntax | endif
--    augroup END
--  ]], false)
--

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "git" },
  callback = function()
    if string.find(vim.fn.getline(1), '^tree') ~= nil or string.find(vim.fn.getline(1), '^commit') ~= nil then
      vim.api.nvim_command("setlocal foldmethod=syntax")
    end
  end
})
