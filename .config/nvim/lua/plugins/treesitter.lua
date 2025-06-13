return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  -- event = { "BufReadPre", "BufNewFile", },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "c", "glsl", },
      sync_install = false,
      auto_install = true,
      highlight = { enable = true, },
    })

    vim.treesitter.language.register("glsl", "vs")
    vim.treesitter.language.register("glsl", "fs")
    vim.api.nvim_create_autocmd(
      {"BufRead", "BufNewFile"},
      {
        pattern = { "*.vs", "*.fs" },
        callback = function()
          vim.cmd("set ft=glsl")
        end,
      }
    )
  end,
}
