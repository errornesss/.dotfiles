return {
  "nvim-lualine/lualine.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local c = {
      c0 = "#262626",
      c1 = "#3a3a3a",
      c2 = "#4d4d4d",
      c3 = "#616161",
      c4 = "#757575",
      c5 = "#898989",
      c6 = "#9d9d9d",
      c7 = "#b1b1b1",
      c8 = "#c4c4c4",
      c9 = "#d8d8d8",
    }
    require("lualine").setup({
      options = {
        theme = {
          normal = {
            a = { bg = c.c2, fg = c.c9, },
            b = { bg = c.c1, fg = c.c9, },
            c = { bg = c.c0, fg = c.c9, },
          },
        },
        component_separators = "|",
        section_separators = "",
      },
      sections = {
        lualine_x = { "filetype", },
      },
    })
  end,
}
