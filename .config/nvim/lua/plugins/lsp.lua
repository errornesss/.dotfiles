return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim", config = true },
    "williamboman/mason-lspconfig.nvim",
    "whoissethdaniel/mason-tool-installer.nvim"
  },
  build = ":MasonUpdate",
  -- event = { "BufReadPre", "BufNewFile", },
  config = function()
    local servers = {
      lua_ls = {},
      clangd = {},
    }
    local ensure_installed = vim.tbl_keys(servers or {})

    require("mason").setup()
    require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          require("lspconfig")[server_name].setup(server)
        end
      }
    })
  end,
}
