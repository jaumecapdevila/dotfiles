local g = vim.g

local colors = {
  Blue = { fg = "$blue" },
  EditorBg = { bg = "$bg0" },
  FloatBorder = { fg = "$blue", bg = "NONE" },
  Foat = { fg = "$fg", bg = "$bg1" },
  Foreground = { fg = "$fg" },
  Green = { fg = "$green" },
  Grey = { fg = "$grey" },
  Message = { fg = "$fg", bg = "$bg0" },
  Purple = { fg = "$purple" },
  TelescopeBorder = { bg = "$bg0", fg = "$purple" },
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

    -- Copilot
    CopilotSuggestions = colors.Grey,

    -- NvimTree
    NvimTreeEndOfBuffer = colors.EditorBg,
    NvimTreeFolderIcon = colors.Purple,
    NvimTreeFolderName = colors.Blue,
    NvimTreeNormal = colors.EditorBg,
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

    -- Cmdline
    ModeMsg = colors.Foreground, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = colors.Message, -- Area for messages and cmdline
  },

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = g.transparent, -- use background color for virtual text
  },
}
