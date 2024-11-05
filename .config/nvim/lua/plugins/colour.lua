return {
  "amedoeyes/eyes.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("eyes").setup({
      extend = {
        palette = {
          hex00 = "#000000",
          hex01 = "#333333",
          hex02 = "#444444",
          hex03 = "#555555",
          hex04 = "#666666",
          hex05 = "#777777",
          hex06 = "#888888",
          hex07 = "#999999",
          hex08 = "#aaaaaa",
          hex09 = "#bbbbbb",
          hex10 = "#cccccc",
        },
      }
    })

    vim.cmd("colorscheme eyes")
  end,
}
