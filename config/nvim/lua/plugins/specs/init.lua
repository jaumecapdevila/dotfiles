local M = {}

M.vscode = {
  { import = "plugins.groups.actions" },
  { import = "plugins.groups.treesitter" }
}

M.default = {
  { import = "plugins.groups.actions" },
  { import = "plugins.groups.coding" },
  { import = "plugins.groups.themes" },
  { import = "plugins.groups.debug" },
  { import = "plugins.groups.editor" },
  { import = "plugins.groups.lang" },
  { import = "plugins.groups.lsp" },
  { import = "plugins.groups.treesitter" },
  { import = "plugins.groups.ui" },
  { import = "plugins.groups.utils" },
}

return M
