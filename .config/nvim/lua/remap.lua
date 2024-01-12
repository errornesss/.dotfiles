vim.g.mapleader = ' '

local map = vim.keymap.set

map('n', '<leader>en', vim.cmd.Ex)
map('n', '<leader><leader>', vim.cmd.so)

-- vim tmux navi
map('n', '<c-y', '<cmd>TmuxNavigateLeft<cr><esc>')
map('n', '<c-n', '<cmd>TmuxNavigateDown<cr><esc>')
map('n', '<c-e', '<cmd>TmuxNavigateUp<cr><esc>')
map('n', '<c-o', '<cmd>TmuxNavigateRight<cr><esc>')
