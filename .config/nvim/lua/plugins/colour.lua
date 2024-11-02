return {
  "amedoeyes/eyes.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("eyes").setup({
      pallete = "dark",
    })

    vim.cmd("colorscheme eyes")
  end,
}
