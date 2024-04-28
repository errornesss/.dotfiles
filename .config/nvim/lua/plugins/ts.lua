return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects"
  },
  build = ":TSUpdate",
  config = function()
    local unruly_textobjects = require("unruly-worker.external.textobjects")
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"lua", },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
      },
      textobjects = {
        select = {
          keymaps = unruly_textobjects.select_keymaps,
        },
        move = {
          goto_next_start = unruly_textobjects.move_goto_next_start,
          goto_previous_start = unruly_textobjects.move_goto_previous_start,
          goto_next_end = unruly_textobjects.move_goto_next_end,
          goto_previous_end = unruly_textobjects.move_goto_previous_end,
        },
      },
    })
  end,
}
