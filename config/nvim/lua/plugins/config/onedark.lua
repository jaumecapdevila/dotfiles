local g = vim.g
local t = g.transparent

local colors = {
  Blue = { fg = "$blue" },
  Sidebar = { fg = "$fg", bg = t and "NONE" or "$bg0" },
  FloatBorder = { fg = "$blue", bg = "NONE" },
  Float = { fg = "$fg", bg = t and "NONE" or "$bg1" },
  Foreground = { fg = "$fg" },
  Green = { fg = "$green" },
  Grey = { fg = "$grey" },
  LightGrey = { fg = "$light_grey" },
  Match = { fg = "$blue", bg = "NONE" },
  Purple = { fg = "$purple" },
  TelescopeBorder = { bg = t and "NONE" or "$bg0", fg = "$purple" },
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
    NvimTreeFolderIcon = colors.Purple,
    NvimTreeFolderName = colors.Blue,
    NvimTreeNormal = colors.Sidebar,
    NvimTreeOpenedFolderName = colors.Purple,

    -- Telescope
    TelescopeSelection = colors.Purple,
    TelescopeSelectionCaret = colors.Purple,
    TelescopeMultiSelection = colors.Grey,
    TelescopeNormal = colors.Float,
    TelescopeBorder = colors.TelescopeBorder,
    TelescopePromptNormal = colors.Float,
    TelescopePromptBorder = colors.TelescopeBorder,
    TelescopeResultsBorder = colors.TelescopeBorder,
    TelescopePreviewBorder = colors.TelescopeBorder,
    TelescopePromptPrefix = colors.Purple,
    TelescopeMatching = colors.Purple,

    -- Which Key
    WhichKey = colors.Purple,
    WhichKeyDesc = colors.Foreground,
    WhichKeySeparator = colors.Green,
    WhichKeyFloat = colors.Float,
    WhichKeyGroup = colors.Blue,
  },

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = g.transparent, -- use background color for virtual text
  },
}
