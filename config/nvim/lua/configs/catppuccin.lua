return {
  flavour = vim.g.mood or "mocha", -- latte, frappe, macchiato, mocha
  transparent_background = vim.g.transparent, -- disables setting the background color.
  float = {
    transparent = true, -- enable transparent floating windows
    solid = false, -- use solid styling for floating windows, see |winborder|
  },
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  no_underline = false, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic" },
    loops = {},
    functions = { "bold" },
    keywords = { "italic" },
    strings = { "italic" },
    variables = {},
    numbers = { "bold" },
    booleans = { "bold" },
    properties = { "bold" },
    types = { "italic" },
    operators = { "bold" },
  },
  color_overrides = {},
  custom_highlights = function(C)
    return {
      NvimTreeFolderIcon = { fg = C.blue },
      NvimTreeFolderName = { fg = C.blue },
      NvimTreeIndentMarker = { fg = C.blue },
    }
  end,
  default_integrations = false,
  auto_integrations = false,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = true,
    which_key = true,
    semantic_tokens = true,
    telescope = {
      enabled = true,
    },
    render_markdown = true,
    indent_blankline = {
      enabled = true,
      scope_color = "blue", -- catppuccin color (eg. `lavender`) Default: text
      colored_indent_levels = true,
    },
  },
}
