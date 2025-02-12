local c = require("ayu.colors")
c.generate(true) -- Pass `true` to enable mirage

local h = {
  Func = { fg = c.func, bold = true },
  Keyword = { fg = c.keyword, italic = true },
  Separator = { fg = c.accent, bg = c.accent },
} 

return {
  mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
  terminal = false, -- Set to `false` to let terminal manage its own colors.
  overrides = {
    -- General
    WinSeparator = h.Separator,
    -- Syntax
    Function = h.Func,
    Statement = h.Keyword,
    ['@tag'] = h.Keyword,
    ['@type.qualifier'] = h.Keyword,
    ['@markup.heading'] = h.Keyword,
    ['@keyword.storage'] = h.Keyword,
  },
}
