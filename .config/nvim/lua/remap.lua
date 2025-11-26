vim.g.mapleader = " "
vim.g.maplocalleader = ","
local map = vim.keymap.set
local cmd = vim.cmd

map("n", "<leader><leader>", cmd.so)

map("n", "<leader>en", ":Fyler<CR>", { silent = true, })

map("n", "ZW", cmd.w)

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<C-y>", function() require("Navigator").left() end)
map("n", "<C-n>", function() require("Navigator").down() end)
map("n", "<C-e>", function() require("Navigator").up() end)
map("n", "<C-o>", function() require("Navigator").right() end)

map("n", "<leader>x", ":!chmod +x %<CR>")

map("n", "<leader>c", "viw~el")
map("i", "<C-c>", "<Esc>viw~ea")

map("n", "<leader>ne", "o<Escape>k")
map("n", "<leader>nn", "o<Escape>")
map("n", "<leader>nc", "cc<Escape>")

-- map("n", "<C-N>", ":m .+1<CR>==", { silent = true, })
-- map("n", "<C-E>", ":m .-2<CR>==", { silent = true, })
map("v", "<C-n>", ":m '>+1<CR>gv=gv")
map("v", "<C-e>", ":m '<-2<CR>gv=gv")

map("n", "<leader>a", "<C-a>")
map("n", "<leader>d", "<C-x>")

map("n", ";", ":<C-f>")
map("n", ":", ":<C-f>i")

map("n", "<leader>bc", ":<C-f>O!bc -l <<< \"\"<Esc>i")
map("v", "<leader>bc", "y:<C-f>O!bc -l <<< \"\"<Esc>P")
