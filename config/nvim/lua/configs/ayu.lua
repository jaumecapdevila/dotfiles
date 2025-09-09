local isMirage = vim.g.mood == "Ayu Mirage"
local colors = require("ayu.colors")
colors.generate(isMirage) -- Pass `true` to enable mirage

return {
  mirage = isMirage,
  overrides = {
    Constant = { bold = true },
    Function = { bold = true, italic = true },
    Operator = { bold = true },
    Statement = { italic = true },
    ["@keyword.storage"] = { italic = true },
    NvimTreeFolderIcon = { fg = colors.accent },
    NvimTreeFolderName = { fg = colors.accent },
    TelescopeBorder = { fg = colors.accent },
  },
}
