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
    width = 50,
    preserve_window_proportions = true,
    side = "right",
  },
  git = {
    enable = false,
  },
  renderer = {
    root_folder_label = false,
    highlight_git = true,
    indent_markers = { enable = false },
    icons = {
      show = {
        folder_arrow = false,
      },
      glyphs = {
        default = "󰈚",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
        },
        git = { unmerged = "" },
      },
    },
  },
}
