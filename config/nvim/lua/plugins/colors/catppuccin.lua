return {
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  transparent_background = vim.g.transparent, -- disables setting the background color.
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  no_underline = true, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic", "bold" },
    loops = { "italic", "bold" },
    functions = { "bold" },
    keywords = { "italic", "bold" },
    strings = {},
    variables = {},
    numbers = {},
    booleans = { "bold" },
    properties = { "italic" },
    types = { "italic" },
    operators = {},
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  color_overrides = {},
  custom_highlights = {},
  default_integrations = true,
}
