local options = {
  defaults = {
    file_ignore_patterns = { ".git/", "node_modules" },
    prompt_prefix = "🔭 ",
    selection_caret = "  ",
    entry_prefix = "  ",
    layout_config = {
      height = 0.90,
      width = 0.90,
      preview_cutoff = 0,
      horizontal = { preview_width = 0.60 },
      vertical = { width = 0.55, height = 0.9, preview_cutoff = 0 },
      prompt_position = "top",
    },
    path_display = { "smart" },
    color_devicons = true,
  },

  extensions_list = { "fzf", "file_browser" },
}

return options
