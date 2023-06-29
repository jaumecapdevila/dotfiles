local utils = require("core.utils")
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazy_path) then
  utils.echo("  Installing lazy.nvim & plugins ...")

  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazy_path,
  })
end

vim.opt.rtp:prepend(lazy_path)

local lazy_opts = require("plugins.configs.lazy")
require("lazy").setup("plugins", lazy_opts)
