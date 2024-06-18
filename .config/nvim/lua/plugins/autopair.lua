return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    local npair = require("nvim-autopairs")

    npair.setup({
      -- fast_wratp = {},
    })
  end,
}
