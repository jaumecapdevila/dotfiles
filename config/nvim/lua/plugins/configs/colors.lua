local M = {}
local g = vim.g

local style = g.transparency and "transparent" or "dark"

M.tokyonight = {
  style = "storm",
  transparent = g.transparency,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = style,
    floats = style,
  },
  sidebars = {
    "qf",
    "vista_kind",
    "terminal",
    "packer",
    "spectre_panel",
    "NeogitStatus",
    "help",
  },
}

M.catppuccin = {
  flavour = "frappe",
  transparent_background = g.transparency,
  no_underline = true,       -- Force no underline
  styles = {                 -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic" },
    loops = { "italic" },
    functions = { "bold" },
    keywords = { "italic" },
    strings = {},
    variables = {},
    numbers = { "bold" },
    booleans = { "bold" },
    properties = { "italic" },
    types = { "italic" },
    operators = { "bold" },
  },
  color_overrides = {},
  custom_highlights = {},
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    notify = true,
    noice = true,
    treesitter = true,
    which_key = true,
  },
}

local config = require("rose-pine.config")

M.rosepine = {
  variant = "main",
  dark_variant = "main",
  bold_vert_split = true,
  dim_nc_background = false,
  disable_background = g.transparency,
  disable_float_background = true,
  disable_italics = false,

  -- https://github.com/rose-pine/neovim/wiki/Recipes
  highlight_groups = {
    ColorColumn = { bg = "rose" },

    -- Blend colours against the "base" background
    CursorLine = { bg = "foam", blend = 10 },

    -- GitSigns
    GitSignsAdd = { fg = config.options.groups.git_add, bg = "NONE" },
    GitSignsChange = { fg = config.options.groups.git_change, bg = "NONE" },
    GitSignsDelete = { fg = config.options.groups.git_delete, bg = "NONE" },
  },
}

return M
