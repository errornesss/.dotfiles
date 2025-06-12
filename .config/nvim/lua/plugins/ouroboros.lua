return {
  "jakemason/ouroboros",
  dependencies = "nvim-lua/plenary.nvim",
  event = { "BufReadPre", "BufNewFile", },
  ft = { "c", "h", },
  config = function()
    require("ouroboros").setup({})

    vim.keymap.set("n", "<leader>ob", ":Ouroboros<CR>")
  end,
}
