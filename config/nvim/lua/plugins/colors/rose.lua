return {
  dark_variant = "moon", -- main, moon, or dawn
  dim_inactive_windows = false,
  extend_background_behind_borders = true,

  enable = {
    terminal = true,
    legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
    migrations = true, -- Handle deprecated options automatically
  },

  styles = {
    bold = true,
    italic = true,
    transparency = vim.g.transparent,
  },

  highlight_groups = {
    Keyword = { italic = true, bold = true },
    Function = { bold = true }
  },

  before_highlight = function(group, highlight, palette)
    -- Disable all undercurls
    if highlight.undercurl then highlight.undercurl = false end
  end,
}
