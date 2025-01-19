local lazy_status = require("lazy.status")

return {
  options = {
    theme = "auto",
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
    disabled_filetypes = { "dashboard", "startify", "packer" },
    globalstatus = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { { "branch", icon = "" } },
    lualine_c = {
      { "filename", path = 1 },
      { "diagnostics", sources = { "nvim_lsp" } },
    },
    lualine_x = {
      {
        lazy_status.updates,
        cond = lazy_status.has_updates,
      },
      "diff",
      "encoding",
      "fileformat",
    },
    lualine_y = { "filetype" },
    lualine_z = {
      { "progress", padding = { left = 1, right = 0 }, separator = "" },
      { "location", padding = { left = 0, right = 1 } },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
}
