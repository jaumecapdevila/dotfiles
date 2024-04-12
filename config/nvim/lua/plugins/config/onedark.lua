local g = vim.g

local colors = {
  Accent = { fg = "#528bff" },
  Purple = { fg = "$purple" },
  Orange = { fg = "$orange" },
  Match = { fg = "$blue", bg = "NONE" },
  Float = { fg = "$fg", bg = "$bg1" },
  Border = { fg = "#528bff", bg = "none" },
  Separator = { fg = "$bg1", bg = "$bg1" },
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

  highlights = {
    -- General
    WinSeparator = colors.Separator,
    MatchParen = colors.Match,

    -- Treesitter
    ["@constructor"] = colors.Purple,
    ["@variable"] = colors.Orange,
    ["@lsp.type.variable"] = colors.Orange,

    -- NvimTree
    NvimTreeFolderIcon = colors.Accent,
    NvimTreeOpenedFolderName = colors.Accent,

    -- Telescope
    TelescopeSelection = colors.Accent,
    TelescopeSelectionCaret = colors.Accent,
    TelescopeBorder = colors.Accent,
    TelescopePromptBorder = colors.Accent,
    TelescopeResultsBorder = colors.Accent,
    TelescopePreviewBorder = colors.Accent,
    TelescopePromptPrefix = colors.Accent,
    TelescopeMatching = colors.Accent,
  },

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = false, -- use undercurl instead of underline for diagnostics
    background = false, -- use background color for virtual text
  },
}
