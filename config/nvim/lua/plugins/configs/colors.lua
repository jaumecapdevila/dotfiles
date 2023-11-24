local M = {}
local g = vim.g

M.tokyonight = {
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = g.transparency, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = g.transparency and "transparent" or "dark", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
}

M.catppuccin = {
  flavour = "frappe",
  transparent_background = g.transparency,
  no_underline = true, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic" },
    loops = { "italic" },
    functions = {},
    keywords = { "italic" },
    strings = {},
    variables = {},
    numbers = { "bold" },
    booleans = { "bold" },
    properties = { "italic" },
    types = { "italic" },
    operators = {},
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = g.transparency and false or true,
    telescope = true,
    notify = true,
    noice = true,
    treesitter = true,
    which_key = true,
    semantic_tokens = true,
  },
}

M.rosepine = {
  variant = "main",
  dark_variant = "main",
  bold_vert_split = true,
  dim_nc_background = false,
  disable_background = g.transparency,
  disable_float_background = true,
  disable_italics = false,

  groups = {
    background = g.transparency and "NONE" or "base",
  },

  -- Change specific vim highlight groups
  -- https://github.com/rose-pine/neovim/wiki/Recipes
  highlight_groups = {
    ColorColumn = { bg = "rose" },
    CursorLine = { bg = "foam", blend = 10 },
  },
}

return M
