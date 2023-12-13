local M = {}

M.vscode = {
  { import = "plugins.groups.actions" },
  { import = "plugins.groups.treesitter" },
}

M.ide = {
  { import = "plugins.groups.actions" },
  { import = "plugins.groups.coding" },
  { import = "plugins.groups.debug" },
  { import = "plugins.groups.editor" },
  { import = "plugins.groups.extras" },
  { import = "plugins.groups.lang" },
  { import = "plugins.groups.lsp" },
  { import = "plugins.groups.theme" },
  { import = "plugins.groups.treesitter" },
  { import = "plugins.groups.ui" },
  { import = "plugins.groups.utils" },
}

M.text = {
  { import = "plugins.groups.actions" },
  { import = "plugins.groups.coding" },
  { import = "plugins.groups.editor" },
  { import = "plugins.groups.theme" },
  { import = "plugins.groups.treesitter" },
  { import = "plugins.groups.ui" },
  { import = "plugins.groups.utils" },
}
return M
