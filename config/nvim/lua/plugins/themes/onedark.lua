local g = vim.g

local bg = g.transparent and "NONE" or "$bg0"

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
  colors = {},
  highlights = {
    FloatBorder = { fg = "$grey", bg = bg },
    NvimTreeEndOfBuffer = { fg = "$bg0", bg = bg },
    NvimTreeFolderIcon = { fg = "$purple" },
    NvimTreeFolderName = { fg = "$purple" },
    NvimTreeNormal = { fg = "$fg", bg = bg },
    NvimTreeOpenedFolderName = { fg = "$purple" },
    NvimTreeRootFolder = { fg = "$purple" },
    NvimTreeVertSplit = { fg = "$bg0" },
  },

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = false, -- use undercurl instead of underline for diagnostics
    background = g.transparent, -- use background color for virtual text
  },
}
