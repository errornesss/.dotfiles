return {
  "stevearc/oil.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  opts = {
    use_default_keymaps = false,
    keymaps = {
      ["q"] = { "actions.close", mode = "n" },
      ["<cr>"] = { "actions.select", mode = "n" },
      ["<c-r>"] = { "actions.refresh", mode = "n" },
    },
    view_options = { show_hidden = true, },
  },
}
