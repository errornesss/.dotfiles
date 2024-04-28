return {
  "slugbyte/unruly-worker",
  dependencies = {
    {
      "numtostr/comment.nvim",
      event = { "BufReadPre", "BufNewFile" },
      opts = { sticky = false, },
    },
  },
  opts = {
    skip_list = { "Z", "C-z", "@", "#", "$", "^"},
    booster = {
      easy_swap = true,
      plugin_comment = true,
      plugin_textobject = true,
    },
  },
}
