local g = vim.g

local c = require('ayu.colors')
c.generate(true)

return {
  mirage = true,
  overrides = {
    ["@keyword.function"] = { fg = c.func, bold = true },
    ["@keyword"] = { fg = c.keyword, italic = true },
    Comment = { fg = c.comment, italic = true },
    Function = { fg = c.func, bold = true },
    Keyword = { fg = c.keyword, italic = true },
  },
}
