return {
  flavour = vim.g.mood == "Catppuccin Frappe" and "frappe" or "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = vim.g.transparent, -- disables setting the background color.
    float = {
        transparent = vim.g.transparent, -- enable transparent floating windows
        solid = false, -- use solid styling for floating windows, see |winborder|
    },
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = { "bold", "italic"},
        functions = {"bold", "italic"},
        keywords = {"italic"},
        strings = {},
        variables = {},
        numbers = {"bold"},
        booleans = {"bold"},
        properties = {"italic"},
        types = {"italic"},
        operators = {"bold"},
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    auto_integrations = false,
}
