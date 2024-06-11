local u = require("utils")
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazy_path) then
  u.echo("  Installing lazy.nvim & plugins ...")

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

require("lazy").setup({
  spec = {
    { import = "plugins.groups.actions" },
    { import = "plugins.groups.coding" },
    { import = "plugins.groups.debug" },
    { import = "plugins.groups.editor" },
    { import = "plugins.groups.extras" },
    { import = "plugins.groups.lsp" },
    { import = "plugins.groups.treesitter" },
    { import = "plugins.groups.ui" },
    { import = "plugins.groups.utils" },
  },
  defaults = { lazy = false },
  install = { colorscheme = { "material" } },
  ui = {
    icons = {
      ft = "",
      lazy = "󰂠 ",
      loaded = "",
      not_loaded = "",
    },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
