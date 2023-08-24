local M = {}

M.tokyonight = {
  style = "storm",
  transparent = false,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark",
    floats = "transparent",
  },
  sidebars = {
    "qf",
    "vista_kind",
    "terminal",
    "packer",
    "spectre_panel",
    "NeogitStatus",
    "help"
  },
}

M.catppuccin = {
  flavour = "mocha",
  transparent_background = false,
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
    barbecue = {
      dim_dirname = true, -- directory name is dimmed by default
      bold_basename = true,
      dim_context = true,
      alt_background = false,
    },
  },
}

return M
