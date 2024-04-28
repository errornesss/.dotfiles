return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
  },
  config = function()
    local unruly_telescope = require("unruly-worker.external.telescope")
    require("telescope").setup({
      defaults = {
        mappings = unruly_telescope.create_mappings(),
      }
    })
  end,
}
