local options = {
  defaults = {
    border = true,
    entry_prefix = "  ",
    prompt_prefix = "🔭 ",
    selection_caret = "  ",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
      },
    },
  },
  extensions_list = { "fzf", "file_browser" },
}

return options
