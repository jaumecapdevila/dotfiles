local italics = vim.g.italics

return {
  transparent = vim.g.transparent, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  diff = { mode = "bg" }, -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
  borders = true, -- Enable the border between verticaly split windows visible
  errors = { mode = "bg" }, -- Display mode for errors and diagnostics
  -- values : [bg|fg|none]
  search = { theme = "vscode" }, -- theme for highlighting search results
  -- values : [vim|vscode]
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = italics },
    functions = { bold = true, italic = italics },
    variables = {},

    -- To customize lualine/bufferline
    bufferline = {
      current = {},
      modified = { italic = true },
    },

    lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  },

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with all highlights and the colorScheme table
  on_highlights = function(hl, c)
    hl.NvimTreeFolderIcon = { fg = c.frost.artic_ocean }
    hl.NvimTreeFolderName = { fg = c.frost.artic_ocean }
    hl.NvimTreeOpenedFolderName = { fg = c.frost.ice, bold = true }
  end,
}
