local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazy_path) then
  vim.api.nvim_echo(
    { { "  Installing lazy.nvim & plugins ...", "Bold" } },
    true,
    {}
  )

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
    { import = "plugins.groups.coding" },
    { import = "plugins.groups.editor" },
    { import = "plugins.groups.formatting" },
    { import = "plugins.groups.git" },
    { import = "plugins.groups.linting" },
    { import = "plugins.groups.lsp" },
    { import = "plugins.groups.testing" },
    { import = "plugins.groups.treesitter" },
    { import = "plugins.groups.ui" },
    { import = "plugins.groups.utils" },
    { import = "plugins.groups.vscode" },
  },
  install = { colorscheme = { "habamax" } },
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
