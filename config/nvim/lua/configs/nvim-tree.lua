return {
  filters = { dotfiles = false },
  disable_netrw = true,
  hijack_cursor = true,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  view = {
    preserve_window_proportions = false,
    side = "left",
    width = 33,
  },
  git = {
    enable = false,
  },
  renderer = {
    root_folder_label = false,
    highlight_git = true,
    indent_markers = { enable = vim.g.indents },
    icons = { show = { folder_arrow = false } },
  },
}
