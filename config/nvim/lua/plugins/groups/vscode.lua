if not vim.g.vscode then return {} end

local enabled = {
  "lazy.nvim",
  "mini.surround",
  "nvim-treesitter",
  "numToStr/Comment.nvim",
}

local Config = require("lazy.core.config")

Config.options.checker.enabled = false
Config.options.change_detection.enabled = false
Config.options.defaults.cond = function(plugin)
  return vim.tbl_contains(enabled, plugin.name) or plugin.vscode
end

return {
  "nvim-treesitter/nvim-treesitter",
  opts = { highlight = { enable = false } },
}
