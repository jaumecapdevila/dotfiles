local g = vim.g

local colors = {
  Accent = { fg = "#528bff" },
  Purple = { fg = "$purple" },
  Orange = { fg = "$orange" },
  Match = { fg = "$blue", bg = "NONE" },
  Float = { fg = "$fg", bg = "$bg1" },
  Border = { fg = "#528bff", bg = "NONE" },
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
    MatchParen = colors.Match,

    -- Treesitter
    ["@constructor"] = colors.Purple,
    ["@variable"] = colors.Orange,
    ["@lsp.type.variable"] = colors.Orange,

    -- NvimTree
    NvimTreeFolderIcon = colors.Accent,
    NvimTreeOpenedFolderName = colors.Accent,
  },

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = false, -- use undercurl instead of underline for diagnostics
    background = false, -- use background color for virtual text
  },
}
