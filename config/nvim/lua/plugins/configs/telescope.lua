local options = {
  defaults = {
    color_devicons = true,
    entry_prefix = "  ",
    file_ignore_patterns = { ".git/", "node_modules" },
    initial_mode = "insert",
    layout_config = {
      height = 0.90,
      horizontal = { preview_width = 0.60 },
      preview_cutoff = 0,
      prompt_position = "top",
      vertical = { width = 0.55, height = 0.9, preview_cutoff = 0 },
      width = 0.90,
    },
    layout_strategy = "horizontal",
    path_display = { "smart" },
    prompt_prefix = "🔭 ",
    selection_caret = "  ",
    sorting_strategy = "ascending",
  },

  extensions_list = { "fzf", "file_browser" },
}

return options
