local g = vim.g

return {
  dark_variant = "main", -- main, moon, or dawn
  dim_inactive_windows = false,
  extend_background_behind_borders = true,
  
  enable = {
      terminal = true,
      legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
      migrations = false, -- Handle deprecated options automatically
  },

  styles = {
      bold = true,
      italic = true,
      transparency = g.transparent,
  },
}
