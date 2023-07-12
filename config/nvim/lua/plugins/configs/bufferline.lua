local options = {
  options = {
    indicator = { style = "none" },
    separator_style = "none",
    always_show_bufferline = false,
    diagnostics = "nvim_lsp",
    left_trunc_marker = "",
    right_trunc_marker = "",
    modified_icon = "●",
    offsets = {
      {
        filetype = "NvimTree",
        text = "EXPLORER",
        text_align = "center",
        separator = false,
      },
    },
    show_close_icon = false,
    show_buffer_close_icons = false,
    show_tab_indicators = false,
  },
}

return options
