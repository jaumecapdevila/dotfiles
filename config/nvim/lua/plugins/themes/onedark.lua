local g = vim.g

return {
  style = "darker",
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
    FloatBorder = { fg = "$grey", bg = "$bg0" },
    NvimTreeEndOfBuffer = { fg = "$bg0", bg = "$bg0" },
    NvimTreeFolderIcon = { fg = "$purple" },
    NvimTreeFolderName = { fg = "$purple" },
    NvimTreeNormal = { fg = "$fg", bg = "$bg0" },
    NvimTreeOpenedFolderName = { fg = "$purple" },
    NvimTreeRootFolder = { fg = "$purple" },
    NvimTreeVertSplit = { fg = "$bg0" },
  },

  -- Plugins Config --
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = false, -- use undercurl instead of underline for diagnostics
    background = true, -- use background color for virtual text
  },
}
