return {
  "edeneast/nightfox.nvim",
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
        styles = {
          comments = "italic"
        },
      },
    })

    vim.cmd("colorscheme nordfox")
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { bg = "none", undercurl = true, })
  end,
}
