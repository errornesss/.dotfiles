vim.g.mapleader = ' '

local map = vim.keymap.set

map('n', '<leader>en', vim.cmd.Ex)
map('n', '<leader><leader>', vim.cmd.so)
