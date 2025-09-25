local italics = vim.g.italics

return {
  dark_variant = vim.g.mood == "Rose Pine Moon" and "moon" or "main",
  dim_inactive_windows = false,
  extend_background_behind_borders = true,

  enable = {
    terminal = true,
    legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
    migrations = true, -- Handle deprecated options automatically
  },

  styles = {
    bold = true,
    italic = italics,
    transparency = vim.g.transparent,
  },

  -- NOTE: Highlight groups are extended (merged) by default. Disable this
  -- per group via `inherit = false`
  highlight_groups = {
    -- Editor
    CursorLineNr = { fg = "love" },

    -- Syntax
    Function = { bold = true, italic = italics },
    Keyword = { italic = italics },
    String = { italic = italics },
    ["@function"] = { bold = true, italic = italics },
    ["@function.builtin"] = { bold = true, italic = italics },
    ["@keyword.import"] = { italic = italics },
    ["@keyword.return"] = { italic = italics },

    -- Notify
    NotifyBackground = { fg = "text", bg = "overlay" },

    -- Colorful Indents
    IndentBlanklineChar = { fg = "muted" },
    IndentBlanklineContextChar = { fg = "love" },
    IblIndent = { fg = "muted" },
    IblScope = { fg = "love" },

    -- Lovely Tree
    NvimTreeNormal = { fg = "subtle" },
    NvimTreeFolderIcon = { fg = "love" },
    NvimTreeFolderName = { fg = "love" },

    -- Leafy Search
    CurSearch = { fg = "base", bg = "leaf", inherit = false },
    Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },

    -- Borderless Telescope
    TelescopeBorder = { fg = "overlay", bg = "overlay" },
    TelescopeNormal = { fg = "subtle", bg = "overlay" },
    TelescopeSelection = { fg = "text", bg = "highlight_med" },
    TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
    TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },
    TelescopeTitle = { fg = "base", bg = "love" },
    TelescopePromptTitle = { fg = "base", bg = "pine" },
    TelescopePreviewTitle = { fg = "base", bg = "iris" },
    TelescopePromptNormal = { fg = "text", bg = "surface" },
    TelescopePromptBorder = { fg = "surface", bg = "surface" },
  },
}
