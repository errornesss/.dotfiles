vim.g.mapleader = " "
local map = vim.keymap.set
local cmd = vim.cmd

map("n", "<leader><leader>", cmd.so)

map("n", "ZW", cmd.w)

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<C-y>", function() require("Navigator").left() end)
map("n", "<C-n>", function() require("Navigator").down() end)
map("n", "<C-e>", function() require("Navigator").up() end)
map("n", "<C-o>", function() require("Navigator").right() end)

map("n", "<leader>x", ":!chmod +x %<CR>")

map("n", "<leader>c", "viw~w")
