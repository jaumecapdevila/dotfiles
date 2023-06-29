local mappings = require("core.mappings")
local utils = require("core.utils")

if utils.isVscode() then
  return {}
end

return {
  -- golang
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    opts = function() return require("plugins.configs.others").gopher end,
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").map("gopher")
    end,
    build = function() vim.cmd([[silent! GoInstallDeps]]) end,
  },
}
