return {
  "theprimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local h = require("harpoon")
    local map = vim.keymap.set
    h:setup()

    map("n", "<leader>ha", function() h:list():add() end)
    map("n", "<leader>hl", function() h.ui:toggle_quick_menu(h:list()) end)

    map("n", "<C-a>", function() h:list():select(1) end)
    map("n", "<C-s>", function() h:list():select(2) end)
    map("n", "<C-h>", function() h:list():select(3) end)
    map("n", "<C-t>", function() h:list():select(4) end)
  end,
}
