return {
    "edeneast/nightfox.nvim",
    config = function()
        require("nightfox").setup({
            options = {
                transparent = true,
            },
        })

        vim.cmd("colorscheme nightfox")
    end,
}
