return {
  style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
  transparent = vim.g.transparent, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    comments = { italic = true },
    keywords = { italic = true, bold = true },
    functions = { bold = true },
    variables = {},
    sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
  on_highlights = function(hl, c)
    -- General
    hl.IncSearch = { fg = c.black, bg = c.yellow }
    hl.CursorLineNr = { fg = c.purple }
    hl.MatchParen = { fg = c.blue }
    hl.FloatTitle = { fg = c.blue }
    hl.FloatBorder = { fg = c.blue }

    -- Telescope
    hl.TelescopeBorder = { fg = c.blue }
    hl.TelescopePromptBorder = { fg = c.purple }
    hl.TelescopePromptTitle = { fg = c.purple }
  end,
}
