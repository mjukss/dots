require('gitsigns').setup {
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    vim.keymap.set('n', '<leader>gd', gs.diffthis)
  end
}
