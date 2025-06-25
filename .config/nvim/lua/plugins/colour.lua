return {
  "amedoeyes/eyes.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("eyes").setup({
      transparent = true,
      extend = {
        palette = {
          hex00 = "#333333",
          hex01 = "#424242",
          hex02 = "#515151",
          hex03 = "#606060",
          hex04 = "#707070",
          hex05 = "#7f7f7f",
          hex06 = "#8e8e8e",
          hex07 = "#9e9e9e",
          hex08 = "#adadad",
          hex09 = "#bcbcbc",
          hex10 = "#cccccc",
        },
      },
    })

    vim.cmd("colorscheme eyes")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none", })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000", })
  end,
}
