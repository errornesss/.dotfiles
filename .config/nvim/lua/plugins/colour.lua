return {
  "amedoeyes/eyes.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("eyes").setup({
      extends = {
        pallete = {
          hex00 = "#000000",
          hex01 = "#1a1a1a",
          hex02 = "#333333",
          hex03 = "#4d4d4d",
          hex04 = "#666666",
          hex05 = "#808080",
          hex06 = "#999999",
          hex07 = "#b3b3b3",
          hex08 = "#cccccc",
          hex09 = "#e6e6e6",
          hex10 = "#ffffff",
        },
      }
    })

    vim.cmd("colorscheme eyes")
  end,
}
