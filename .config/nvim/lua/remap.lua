vim.g.mapleader = " "
vim.g.maplocalleader = ","
local map = vim.keymap.set
local cmd = vim.cmd

map("n", "<leader><leader>", cmd.so)

map("n", "<leader>en", ":Oil<CR>")

map("n", "ZW", cmd.w)

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<C-y>", function() require("Navigator").left() end)
map("n", "<C-n>", function() require("Navigator").down() end)
map("n", "<C-e>", function() require("Navigator").up() end)
map("n", "<C-o>", function() require("Navigator").right() end)

map("n", "<leader>x", ":!chmod +x %<CR>", { silent = true })

map("n", "<leader>c", "viw~w")

map("n", "<leader>ne", "o<Escape>k")
map("n", "<leader>nn", "o<Escape>")
map("n", "<leader>nc", "cc<Escape>")

map("n", "<c-N>", ":m .+1<CR>==", { silent = true })
map("n", "<c-E>", ":m .-2<CR>==", { silent = true })
map("v", "<c-N>", ":m '>+1<CR>gv=gv")
map("v", "<c-E>", ":m '<-2<CR>gv=gv")

map("n", "<leader>a", "<C-a>")
map("n", "<leader>d", "<C-x>")
