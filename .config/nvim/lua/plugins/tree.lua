return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  config = function()
    local function attach(bufnr)
      local api = require("nvim-tree.api")
      local function opts(desc)
        return {
          desc = "nvim-tree: " .. desc,
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true
        }
      end

      local function map(a, b, c) vim.keymap.set("n", a, b, c) end
      map("<leader>en", api.tree.toggle)
      map("a", api.fs.create, opts("Create file/directory"))
      map("c", api.fs.copy.node, opts("Copy"))
      map("d", api.fs.remove, opts("Delete"))
      map("D", api.fs.trash, opts("Trash"))
      map("f", api.live_filter.start, opts("Live Filter: Start"))
      map("F", api.live_filter.clear, opts("Live Filter: Clear"))
      map("h", api.node.open.horizontal, opts("Open: Horizontal Split"))
      map("i", api.node.show_info_popup, opts("Info")) 
      map("k", api.fs.copy.filename, opts("Copy Name"))
      map("K", api.fs.copy.relative_path, opts("Copy Relative Path"))
      map("l", api.tree.change_root_to_node, opts("CD"))
      map("o", api.node.open.edit, opts("Open"))
      map("p", api.fs.paste, opts("Paste"))
      map("q", api.tree.close, opts("Close"))
      map("r", api.fs.rename, opts("Rename"))
      map("R", api.fs.rename_full, opts("Rename: Full Path"))
      map("s", api.node.open.vertical, opts("Open: Vertical Split"))
      map("<C-r>", api.tree.reload, opts("Refresh"))
      map("x", api.fs.cut, opts("Cut"))
      map("y", api.tree.change_root_to_parent, opts("Up"))
    end

    require("nvim-tree").setup({
      on_attach = attach,
      hijack_cursor = true,
      view = {
        cursorline = true,
        relativenumber = true,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      renderer = {
        indent_width = 2,
        indent_markers = {
          enable = true,
        },
        icons = {
          git_placement = "after",
        },
      },
      git = {
        enable = true,
        ignore = false,
      },
    })
  end,
}
