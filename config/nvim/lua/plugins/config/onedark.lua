local g = vim.g

local accent = "#528bff"

local colors = {
  Accent = { fg = accent },
  Blue = { fg = "$blue" },
  Float = { fg = "$fg", bg = "$bg0" },
  FloatBorder = { fg = accent, bg = "NONE" },
  Foreground = { fg = "$fg" },
  Green = { fg = "$green" },
  Grey = { fg = "$grey" },
  LightGrey = { fg = "$light_grey" },
  Match = { fg = accent, bg = "NONE" },
  Purple = { fg = "$purple" },
  Red = { fg = "$red" },
  Sidebar = { fg = "$fg", bg = "$bg0" },
  Yellow = { fg = "$yellow" },
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
    variables = "bold",
  },

  -- Custom Highlights --
  highlights = {
    -- General
    NormalFloat = colors.Float,
    FloatBorder = colors.FloatBorder,
    MatchParen = colors.Match,

    -- Syntax
    Title = colors.Accent,

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

    -- Mason
    MasonHighlight = colors.Accent,

    -- Noice
    NoiceCmdline = colors.Foreground,
    NoiceCmdlineIcon = colors.Accent,
    NoiceCmdlineIconSearch = colors.Accent,
    NoiceCmdlinePopupBorder = colors.Accent,
    NoiceCmdlinePopupBorderSearch = colors.Accent,
    NoiceCmdlinePopupTitle = colors.Accent,
    NoiceConfirmBorder = colors.Accent,

    -- Which Key
    WhichKey = colors.Accent,
    WhichKeyDesc = colors.Foreground,
    WhichKeySeparator = colors.Foreground,
    WhichKeyFloat = colors.Float,
    WhichKeyGroup = colors.Purple,

    -- Notifications
    NotifyERRORBorder = colors.FloatBorder,
    NotifyWARNBorder = colors.FloatBorder,
    NotifyINFOBorder = colors.FloatBorder,
    NotifyDEBUGBorder = colors.FloatBorder,
    NotifyTRACEBorder = colors.FloatBorder,
    NotifyERRORIcon = colors.Red,
    NotifyWARNIcon = colors.Yellow,
    NotifyINFOIcon = colors.Blue,
    NotifyDEBUGIcon = colors.Blue,
    NotifyTRACEIcon = colors.Blue,
    NotifyERRORTitle = colors.Red,
    NotifyWARNTitle = colors.Yellow,
    NotifyINFOTitle = colors.Blue,
    NotifyDEBUGTitle = colors.Blue,
    NotifyTRACETitle = colors.Blue,
  },

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = false, -- use undercurl instead of underline for diagnostics
    background = false, -- use background color for virtual text
  },
}
