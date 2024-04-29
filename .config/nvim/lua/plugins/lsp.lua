return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { 'williamboman/mason.nvim', config = true } ,
    'williamboman/mason-lspconfig.nvim',
    "whoissethdaniel/mason-tool-installer.nvim",
  },
  build = ':MasonUpdate',
  config = function()
    -- local capabilities = vim.lsp.protocol.make_client_capabilities()
    -- capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities)

    local servers = {
      lua_ls = {},
      clangd = {},
    }
    local ensure_installed  = vim.tbl_keys(servers or {})

    require('mason').setup()
    require("mason-tool-installer").setup { ensure_installed = ensure_installed }
    require('mason-lspconfig').setup {
      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          -- server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
          require("lspconfig")[server_name].setup(server)
        end,
      }
    }

  end,
}
