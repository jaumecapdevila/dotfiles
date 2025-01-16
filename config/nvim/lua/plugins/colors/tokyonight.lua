return {
  style = "moon", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
  transparent = vim.g.transparent, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true, bold = true },
    functions = { bold = true },
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "normal", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  cache = true, -- When set to true, the theme will be cached for better performance
}
