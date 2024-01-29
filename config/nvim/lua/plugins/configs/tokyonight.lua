local g = vim.g

return {
  style = g.tokyo_style or "storm",
  transparent = g.transparency,
  terminal_colors = true,
  styles = {
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "normal",
    floats = "transparent",
  },
}
