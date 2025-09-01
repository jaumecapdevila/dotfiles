return {
  style = "dark",                  -- "dark" or "light"
  transparent = vim.g.transparent, -- true/false; Enable this to disable setting the background color
  enable_italics = true,           -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
  styles = {
    -- Style to be applied to different syntax groups
    comments = { italic = true },
    keywords = { italic = true, bold = true },
    functions = { bold = true },
    variables = {},
    string = { italic = true },
    underline = false, -- true/false; for global underline
    undercurl = false, -- true/false; for global undercurl
  },
  -- Add specific hightlight groups
  on_highlights = function(hl, c)
    -- Syntax
    hl.Keyword.fg = c.orange
    hl.Function.fg = c.blue
    -- Plugins
    hl.TelescopeBorder.fg = c.blue
    hl.NvimTreeFolderIcon.fg = c.orange
    hl.NvimTreeFolderName.fg = c.orange
  end,
}
