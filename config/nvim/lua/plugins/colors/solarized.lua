return {
  style = "dark", -- "dark" or "light"
  transparent = vim.g.transparent, -- true/false; Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  enable_italics = true, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
  styles = {
    -- Style to be applied to different syntax groups
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    string = {},
    underline = true, -- true/false; for global underline
    undercurl = true, -- true/false; for global undercurl
  },
  -- Add specific hightlight groups
  on_highlights = function(hl, c)
    -- General
    hl.Keyword = { fg = c.violet, italic = true }
    hl.TSKeyword = { fg = c.violet, italic = true }
    hl.Function = { fg = c.blue, bold = true }
    hl.TSFunction = { fg = c.blue, bold = true }
    -- Telescope
    hl.TelescopeMatching                        = { fg = c.purple, bold = true }
    hl.TelescopeBorder                          = { fg = c.violet, bg = c.none }
    hl.TelescopePromptBorder                    = { fg = c.purple }
    hl.TelescopePromptPrefix                    = { fg = c.purple }
  end,
}
