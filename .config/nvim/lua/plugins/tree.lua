return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  lazy = false,
  config = function()
    local function my_on_attach(bufnr)
      local api = require('nvim-tree.api')

      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- mappings
      -- local map = vim.keymap.set
      local function map(x, y, z)
        vim.keymap.set('n', x, y, z)
      end
      -- map('', api., opts(''))
      map('<leader>en', api.tree.toggle)
      map('a', api.fs.create, opts('Create file/directory'))
      map('d', api.fs.remove, opts('Delete'))
      map('D', api.fs.trash, opts('Trash'))
      map('o', api.node.open.edit, opts('Open'))
      map('q', api.tree.close, opts('Close'))
      map('R', api.fs.rename, opts('Rename'))
      map('r', api.fs.rename_basename, opts('Rename: Basename'))
      map('y', api.tree.change_root_to_parent, opts('Up'))
      map('c', api.tree.change_root_to_node, opts('CD'))
    end

    require('nvim-tree').setup({
      on_attach = my_on_attach,
      hijack_cursor = true,
      -- disable_netrw = true,
      hijack_netrw = true,
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
