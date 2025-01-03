return {
  variant = "auto", -- auto, main, moon, or dawn
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

  palette = {
    -- Override the builtin palette per variant
    -- moon = {
    --     base = '#18191a',
    --     overlay = '#363738',
    -- },
  },

  highlight_groups = {
    -- Leafy search
    CurSearch = { fg = "base", bg = "leaf", inherit = false },
    Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },

    -- Colorful gutter
    CursorLineNr = { fg = "text", bg = "surface", bold = true },
    LineNr = { fg = "muted", bg = "surface" },
    SignColumn = { bg = "surface" },
    GitSignsAdd = { fg = "foam", bg = "surface" },
    GitSignsChange = { fg = "rose", bg = "surface" },
    GitSignsDelete = { fg = "love", bg = "surface" },

    -- Transparent telescope
    TelescopeBorder = { fg = "rose", bg = "none" },
    TelescopeNormal = { bg = "none" },
    TelescopePromptBorder = { fg = "rose", bg = "none" },
    TelescopePromptNormal = { bg = "base" },
    TelescopeResultsNormal = { fg = "subtle", bg = "none" },
    TelescopeSelection = { fg = "text", bg = "base" },
    TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
  },

  before_highlight = function(group, highlight, palette)
    -- Disable all undercurls
    if highlight.undercurl then highlight.undercurl = false end
  end,
}
