local isMirage = vim.g.mood == "Ayu Mirage"
local colors = require("ayu.colors")
local italics = vim.g.italics
colors.generate(isMirage) -- Pass `true` to enable mirage

return {
  mirage = isMirage,
  overrides = {
    Constant = { bold = true },
    Function = { bold = true, italic = italics },
    Operator = { bold = true },
    Statement = { italic = italics },
    ["@keyword.storage"] = { italic = italics },
    NvimTreeFolderIcon = { fg = colors.accent },
    NvimTreeFolderName = { fg = colors.accent },
    TelescopeBorder = { fg = colors.accent },
  },
}
