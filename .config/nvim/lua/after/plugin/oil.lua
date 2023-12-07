require("oil").setup(
  {
    default_file_explorer = true,
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<C-c>"] = "actions.close",
      ["<C-s>"] = "actions.select_vsplit",
      ["<C-h>"] = "actions.select_split",
      ["<C-p>"] = "actions.preview",
      ["<C-l>"] = "actions.refresh",
      ["-"] = "actions.parent",
      ["_"] = "actions.open_cwd",
    },
    view_options = {
      show_hidden = true,
    }
  }
)
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
