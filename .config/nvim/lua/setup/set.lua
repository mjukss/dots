vim.opt.clipboard = "unnamedplus"
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.termguicolors = true
-- vim.opt.colorcolumn = "80"

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.ignorecase = true

vim.opt.cursorline = true

vim.g.fugitive_summary_format = "%cs | %<(20,trunc)%an | %s"

vim.api.nvim_exec([[
  augroup conditional_folding
    autocmd!
    autocmd BufReadPost * if getline(1) =~# '^tree' | setlocal foldmethod=syntax | endif
    autocmd BufReadPost * if getline(1) =~# '^commit' | setlocal foldmethod=syntax | endif
  augroup END
]], false)

