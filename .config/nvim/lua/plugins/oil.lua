return {
  "stevearc/oil.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  opts = {
    keymaps = {
      ["y"] = { "actions.parent", mode = "n" },
      ["o"] = "actions.select",
      ["q"] = { "actions.close", mode = "n" },
      ["<c-r>"] = "actions.refresh"
    },
    use_default_keymaps = false,
    view_options = {
      show_hidden = true,
    },
  },
}
