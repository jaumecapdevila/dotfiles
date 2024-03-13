local g = vim.g

local accent = "#528bff"

local colors = {
  Blue = { fg = "$blue" },
  Sidebar = { fg = "$fg", bg = "$bg0" },
  FloatBorder = { fg = accent, bg = "NONE" },
  Float = { fg = "$fg", bg = "$bg1" },
  Foreground = { fg = "$fg" },
  Green = { fg = "$green" },
  Grey = { fg = "$grey" },
  LightGrey = { fg = "$light_grey" },
  Match = { fg = "$blue", bg = "NONE" },
  Accent = { fg = accent },
}

return {
  style = "dark",
  transparent = g.transparent,
  term_colors = true,
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

  code_style = {
    comments = "italic",
    keywords = "italic",
    functions = "bold",
    strings = "none",
    variables = "none",
  },

  -- Custom Highlights --
  highlights = {
    NormalFloat = colors.Float,
    FloatBorder = colors.FloatBorder,
    MatchParen = colors.Match,

    -- Copilot
    CopilotSuggestions = colors.Grey,

    -- Treesitter
    ["@constructor"] = colors.LightGrey,

    -- NvimTree
    NvimTreeEndOfBuffer = colors.Sidebar,
    NvimTreeFolderIcon = colors.Accent,
    NvimTreeFolderName = colors.Foreground,
    NvimTreeNormal = colors.Sidebar,
    NvimTreeOpenedFolderName = colors.Accent,

    -- Telescope
    TelescopeSelection = colors.Accent,
    TelescopeSelectionCaret = colors.Accent,
    TelescopeMultiSelection = colors.Grey,
    TelescopeBorder = colors.Accent,
    TelescopePromptBorder = colors.Accent,
    TelescopeResultsBorder = colors.Accent,
    TelescopePreviewBorder = colors.Accent,
    TelescopePromptPrefix = colors.Accent,
    TelescopeMatching = colors.Accent,

    -- Which Key
    WhichKey = colors.Accent,
    WhichKeyDesc = colors.Foreground,
    WhichKeySeparator = colors.Green,
    WhichKeyFloat = colors.Float,
    WhichKeyGroup = colors.Blue,
  },

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = false, -- use background color for virtual text
  },
}
