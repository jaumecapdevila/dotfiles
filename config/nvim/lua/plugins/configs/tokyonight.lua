local g = vim.g
local transparent = g.transparency

return {
  style = g.tokyo_style or "night",
  transparent = transparent,
  terminal_colors = true,
  styles = {
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = transparent and "transparent" or "normal",
    floats = "transparent",
  },
}
