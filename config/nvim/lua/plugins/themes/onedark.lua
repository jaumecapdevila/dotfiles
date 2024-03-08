local g = vim.g

return {
  style = "dark",
  transparent = g.transparent,
  term_colors = true,
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

  code_style = {
    comments = "italic",
    keywords = "bold,italic",
    functions = "bold",
    strings = "none",
    variables = "none",
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

    -- Telescope
    TelescopeBorder = { fg = "$purple" },
    TelescopePromptBorder = { fg = "$purple" },
    TelescopeResultsBorder = { fg = "$purple" },
    TelescopePreviewBorder = { fg = "$purple" },
    TelescopeMatching = { fg = "$purple", fmt = "bold" },
    TelescopePromptPrefix = { fg = "$purple" },
    TelescopeSelectionCaret = { fg = "$purple" },

    -- Which Key
    WhichKey = { fg = "$purple" },
    WhichKeyDesc = { fg = "$fg" },
    WhichKeyGroup = { fg = "$purple" },

    -- Cmdline
    ModeMsg = { fg = "$fg", fmt = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = "$fg", bg = "$bg1" }, -- Area for messages and cmdline
  },

  -- Plugins Config --
  diagnostics = {
    darker = false, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = g.transparent, -- use background color for virtual text
  },
}
