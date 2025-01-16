return {
  options = {
    theme = "auto",
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { { "branch", icon = "" } },
    lualine_c = { "buffers" },
    lualine_x = { "tabs" },
    lualine_y = { "progress" },
  },
  extensions = { "nvim-tree" },
}
