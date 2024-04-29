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
    skip_list = { "Z", "C-z", "@", "#", "$", "^", "C-h"},
    booster = {
      easy_swap = true,
      plugin_comment = true,
      plugin_textobject = true,
      plugin_telescope_leader = true,
    },
  },
}
