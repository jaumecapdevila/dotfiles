local c = require("ayu.colors")
local mirage = true

c.generate(mirage) -- Pass `true` to enable mirage

local function italicize(fg) return { fg = fg, italic = true } end

local h = {
  Fg = { fg = "#a2aabc" },
  Divider = { fg = "#6679a4", bg = "NONE" },
  Keyword = italicize(c.keyword),
  Tag = italicize(c.tag),
}

return {
  mirage = mirage, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
  terminal = false, -- Set to `false` to let terminal manage its own colors.
  overrides = {
    -- General
    Normal = h.Fg,

    -- Telescope
    TelescopeBorder = h.Divider,

    -- Syntax
    Delimiter = h.Fg,
    Special = h.Fg,
    Statement = h.Keyword,
    ["@keyword.storage"] = h.Keyword,
    ["@property"] = h.Tag,
    ["@tag"] = h.Keyword,
    ["@type.qualifier"] = h.Keyword,
    ["@variable"] = h.Fg,
    ["@variable.parameter"] = h.Fg,
  },
}
