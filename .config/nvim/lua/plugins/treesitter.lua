return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    -- event = { "BufReadPre", "BufNewFile", },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "c", },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true, },
        })
    end,
}
