local g = vim.g

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
    NormalFloat = { bg = "$bg1" },
    FloatBorder = { fg = "$blue", bg = "$bg0" },

    -- NvimTree
    NvimTreeEndOfBuffer = { bg = "$bg0" },
    NvimTreeFolderIcon = { fg = "$blue" },
    NvimTreeFolderName = { fg = "$blue" },
    NvimTreeNormal = { bg = "$bg0" },
    NvimTreeOpenedFolderName = { fg = "$blue" },
    NvimTreeRootFolder = { fg = "$blue" },

    -- Cmdline
    ModeMsg = { fg = "$fg", fmt = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = "$fg", bg = "$bg0" }, -- Area for messages and cmdline
  },

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = g.transparent, -- use background color for virtual text
  },
}
