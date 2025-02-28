return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local unruly_telescope = require("unruly-worker.external.telescope")
        require("telescope").setup({
            defaults = {
                mappings = unruly_telescope.create_mappings(),
            },
        })
    end,
}
