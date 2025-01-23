local lazy_status = require("lazy.status")

return {
  options = {
    theme = "solarized_dark",
    -- section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
    disabled_filetypes = { "dashboard", "startify", "packer" },
    globalstatus = true,
  },
}
