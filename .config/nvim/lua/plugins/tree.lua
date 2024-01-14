return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local function my_on_attach(bufnr)
      local api = require('nvim-tree.api')

      -- mappings
      api.config.mappings.default_on_attach(bufnr)
      local map = vim.keymap.set
      map('n', '<leader>en', api.tree.toggle) --, opts('Toggle'))
    end

    require('nvim-tree').setup({
      on_attach = my_on_attach,
      view = {
        cursorline = true,
        side = 'right',
        relativenumber = true,
        width = 40,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })
  end,
}
