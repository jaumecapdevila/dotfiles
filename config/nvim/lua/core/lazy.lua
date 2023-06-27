local M = {}
local utils = require("core.utils")

M.install = function(install_path)
  utils.echo("  Installing lazy.nvim & plugins ...")
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    repo,
    install_path,
  })
end

return M
