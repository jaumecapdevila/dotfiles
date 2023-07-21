local M = {}

M.catppuccin = {
  flavour = "frappe",
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

M.github = {
  options = {
    transparent = false,   -- Disable setting background
    dim_inactive = false,  -- Non focused panes set to alternative background
    module_default = true, -- Default enable value for modules
    styles = {             -- Style to be applied to different syntax groups
      comments = "italic", -- Value is any valid attr-list value `:help attr-list`
      functions = "bold",
      keywords = "italic",
      variables = "NONE",
      conditionals = "bold",
      constants = "bold",
      numbers = "bold",
      operators = "bold",
      strings = "NONE",
      types = "italic",
    },
    darken = { -- Darken floating windows and sidebar-like windows
      floats = true,
      sidebars = {
        enable = true,
        list = {
          "qf",
          "vista_kind",
          "terminal",
          "packer",
          "spectre_panel",
          "NeogitStatus",
          "help",
        },
      },
    },
  },
}

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
  lualine_bold = true,
}

M.rosepine = {
  variant = "moon",
  dark_variant = "moon",
  bold_vert_split = false,
  dim_nc_background = false,
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,
}

M.synthwave84 = {
  glow = {
    error_msg = true,
    type2 = true,
    func = true,
    keyword = true,
    operator = false,
    buffer_current_target = true,
    buffer_visible_target = true,
    buffer_inactive_target = true,
  }
}

return M
