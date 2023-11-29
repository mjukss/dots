require('gitsigns').setup {
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    vim.keymap.set('n', '<leader>gd', gs.diffthis)
    vim.keymap.set('n', '<leader>gp', gs.preview_hunk)
  end
}
