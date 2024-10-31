return {
  style = "storm", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
  transparent = vim.g.transparent, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    comments = { italic = true },
    keywords = { italic = true, bold = true },
    functions = {bold = true},
    variables = {},
    sidebars = "normal", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
}
