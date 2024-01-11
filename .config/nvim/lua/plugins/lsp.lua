return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  },
  build = ':MasonUpdate',
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = {'lua_ls', },
    })

    require('lspconfig').lua_ls.setup {}
  end,
}
