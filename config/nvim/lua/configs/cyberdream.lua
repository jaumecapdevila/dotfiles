return {
  -- Set light or dark variant
  variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`

  -- Enable transparent background
  transparent = vim.g.transparent,

  -- Reduce the overall saturation of colours for a more muted look
  saturation = 0.9, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)

  -- Enable italics comments
  italic_comments = true,

  -- Replace all fillchars with ' ' for the ultimate clean look
  hide_fillchars = false,

  -- Apply a modern borderless look to pickers like Telescope, Snacks Picker & Fzf-Lua
  borderless_pickers = true,

  -- Set terminal colors used in `:terminal`
  terminal_colors = true,

  -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
  cache = false,

  -- Override a highlight group entirely using the built-in colour palette
  overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
    -- Example:
    return {}
  end,

  -- Disable or enable colorscheme extensions
  extensions = {
    telescope = true,
    notify = true,
  },
}
