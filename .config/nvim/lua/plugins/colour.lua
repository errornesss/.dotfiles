-- this is a comment
return {
  'edeneast/nightfox.nvim',

  config = function()
    require('nightfox').setup({
      options = {
        transparent = true,
        styles = {
          comments = 'italic'
        },
      },
    })
    vim.cmd('colorscheme nightfox')
  end,
}
