return {
  "jakemason/ouroboros.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  ft = { "c", "h", },
  config = function()
    require("ouroboros").setup({})

    vim.keymap.set("n", "<leader>ob", ":Ouroboros<CR>")
  end,
}
