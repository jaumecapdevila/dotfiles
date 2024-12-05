return {
  defaults = {
    entry_prefix = "  ",
    prompt_prefix = " 󰳟  ",
    results_title = false,
    selection_caret = "  ",
    sorting_strategy = "ascending",
    layout_strategy = "center",
    layout_config = {
      preview_cutoff = 1, -- Preview should always show (unless previewer = false)
      width = function(_, max_columns, _) return math.min(max_columns, 120) end,
      height = function(_, _, max_lines) return math.min(max_lines, 15) end,
    },
    border = true,
    borderchars = {
      prompt = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
      results = { "─", "│", "─", "│", "├", "┤", "╯", "╰" },
      preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    },
  },

  extensions_list = { "fzf", "file_browser" },
}
