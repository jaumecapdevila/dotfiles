local colors = require("vesper.colors")

return {
  transparent = vim.g.transparent, -- Boolean: Sets the background to transparent
  italics = {
    comments = true, -- Boolean: Italicizes comments
    keywords = true, -- Boolean: Italicizes keywords
    functions = true, -- Boolean: Italicizes functions
    strings = true, -- Boolean: Italicizes strings
    variables = false, -- Boolean: Italicizes variables
  },
  overrides = {
    Constant = { bold = true },
    Function = { bold = true, italic = true },
    Operator = { bold = true },
    Statement = { italic = true },
    NvimTreeFolderIcon = { fg = colors.greenLight },
    NvimTreeFolderName = { fg = colors.greenLight },
    TelescopeBorder = { fg = colors.greenLight },
  },
}
