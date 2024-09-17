return {
  'petertriho/nvim-scrollbar',
  config = function()
    local colors = require('tokyonight.colors').setup()

    require('scrollbar').setup {
      handle = {
        color = colors.bg_highlight, -- Use Tokyo Night background highlight color
      },
      marks = {
        Search = { color = colors.orange, blend = 30 }, -- Color for search matches
        Error = { color = colors.error }, -- Color for errors
        Warn = { color = colors.warning }, -- Color for warnings
        Info = { color = colors.info }, -- Color for info
        Hint = { color = colors.hint }, -- Color for hints
        Misc = { color = colors.purple }, -- Miscellaneous
        Cursor = { color = colors.bg_highlight },
      },
      handlers = {
        cursor = false,
        gitsigns = true,
        search = true,
      },
    }
  end,
}
