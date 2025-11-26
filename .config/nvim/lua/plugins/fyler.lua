return {
  "a7lavinraj/fyler.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  branch = "stable",
  opts = {
    integrations = { icon = "nvim_web_devicons", },
    views = {
      finder = {
        default_explorer = true,
        win = {
          win_opts = {
            cursorline = true,
            number = true,
            relativenumber = true,
          },
        },
      },
    },
  },
}
