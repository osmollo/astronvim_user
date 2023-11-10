return {
  "cappyzawa/trim.nvim",
  lazy = false,
  config = function()
    require('trim').setup({
      patterns = {
        [[%s/\(\n\n\)\n\+/\1/]],   -- replace multiple blank lines with a single line
      },
      trim_on_write = true,
      trim_trailing = true,
      trim_last_line = true,
      trim_first_line = true,--
    })
  end,
}
