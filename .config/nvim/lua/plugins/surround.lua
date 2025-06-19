return {
  "echasnovski/mini.surround",
  version = "*",
  event = { "BufReadPre", "BufNewFile", },
  opts = {
    highlight_duration = 1000,
    search_method = "cover_or_next",
  },
}
