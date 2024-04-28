return {
  "theprimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    local map = vim.keymap.set

    map("n", "<leader>a", function() harpoon:list():add() end)
    map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    map("n", "<C-h>", function() harpoon:list():select(1) end)
    map("n", "<C-t>", function() harpoon:list():select(2) end)
    map("n", "<C-s>", function() harpoon:list():select(3) end)
    map("n", "<C-g>", function() harpoon:list():select(3) end)
  end,
}
