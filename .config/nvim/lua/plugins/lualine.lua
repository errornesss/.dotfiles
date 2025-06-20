return {
  "nvim-lualine/lualine.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local c = {
      hex00 = "#262626",
      hex01 = "#383838",
      hex02 = "#494949",
      hex03 = "#5b5b5b",
      hex04 = "#6d6d6d",
      hex05 = "#7f7f7f",
      hex06 = "#919191",
      hex07 = "#a3a3a3",
      hex08 = "#b5b5b5",
      hex09 = "#c6c6c6",
      hex10 = "#d8d8d8",
    }

    require("lualine").setup({
      options = {
        theme = {
          normal = {
            a = { fg = c.hex10, bg = c.hex02},
            b = { fg = c.hex10, bg = c.hex01},
            c = { fg = c.hex10, bg = c.hex00},
          },
          insert = { a = { bg = c.hex03, }, z = { bg = c.hex02, }, },
          visual = { a = { bg = c.hex04, }, z = { bg = c.hex02, }, },
          replace = { a = { fg = c.hex01, bg = c.hex05, }, z = { bg = c.hex02, }, },
          command = { a = { fg = c.hex01, bg = c.hex06, }, z = { bg = c.hex02, }, },
        },
        component_separators = "|",
        section_separators = "",
      },
      sections = {
        lualine_x = { "filetype", },
      },
    })
  end
}
