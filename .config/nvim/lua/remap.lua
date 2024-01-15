vim.g.mapleader = ' '

local map = vim.keymap.set
local cmd = vim.cmd

-- map('n', '<leader>en', vim.cmd.Ex)
map('n', '<leader><leader>', cmd.so)

-- vim tmux navi
map('n', '<c-y>', cmd.TmuxNavigateLeft)
map('n', '<c-n>', cmd.TmuxNavigateDown)
map('n', '<c-e>', cmd.TmuxNavigateUp)
map('n', '<c-o>', cmd.TmuxNavigateRight)
