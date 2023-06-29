local utils = require("core.utils")

if utils.isVscode() then
  return {}
end

return {
  "nvim-lua/plenary.nvim",
}
