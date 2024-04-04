local lazy_status = require("lazy.status") -- to configure lazy pending updates count

local conditions = {
  outdated_plugins = function() return lazy_status.has_updates() end,
  buffer_not_empty = function() return vim.fn.empty(vim.fn.expand("%:t")) ~= 1 end,
  hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
}

-- Onedark
local colors = {
  accent = "#528BFF",
  bg = "#3b3f4c",
  blue = "#61afef",
  cyan = "#56b6c2",
  fg = "#abb2bf",
  green = "#98c379",
  magenta = "#c678dd",
  red = "#e86671",
  white = "#5c6370",
  yellow = "#e5c07b",
}

local custom_theme = {
  normal = {
    a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
    c = { bg = colors.bg, fg = colors.fg },
    x = { bg = colors.bg, fg = colors.fg },
  },
  insert = {
    a = { bg = colors.green, fg = colors.bg, gui = "bold" },
    c = { bg = colors.bg, fg = colors.fg },
    x = { bg = colors.bg, fg = colors.fg },
  },
  visual = {
    a = { bg = colors.purple, fg = colors.bg, gui = "bold" },
    c = { bg = colors.bg, fg = colors.fg },
    x = { bg = colors.bg, fg = colors.fg },
  },
  command = {
    a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
    c = { bg = colors.bg, fg = colors.fg },
    x = { bg = colors.bg, fg = colors.fg },
  },
  replace = {
    a = { bg = colors.red, fg = colors.bg, gui = "bold" },
    c = { bg = colors.bg, fg = colors.fg },
    x = { bg = colors.bg, fg = colors.fg },
  },
  inactive = {
    a = { bg = colors.bg, fg = colors.fg, gui = "bold" },
    c = { bg = colors.bg, fg = colors.fg },
    x = { bg = colors.bg, fg = colors.fg },
  },
}

local config = {
  options = {
    globalstatus = true, -- have a single statusline at bottom of neovim instead of one for  every window
    component_separators = "",
    section_separators = "",
    theme = custom_theme,
  },
  -- remove defaults
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },

  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}

-- +-------------------------------------------------+
-- | A | B | C                             X | Y | Z |
-- +-------------------------------------------------+
local function ins_comp(section, component)
  table.insert(config.sections[section], component)
end

ins_comp("lualine_a", {
  "mode",
  icon = "󱓞",
})

-- Add components to the beginning of lualine

ins_comp("lualine_c", {
  "branch",
  icon = "󰘬",
})

ins_comp("lualine_c", {
  "filename",
  icon = "󰈔",
  file_status = false,
  newfile_status = false,
  symbols = { unnamed = "" },
})

ins_comp("lualine_c", {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = " ", warn = " ", info = " " },
})

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_comp("lualine_c", {
  function() return "%=" end,
})

-- Add components to right sections

ins_comp("lualine_x", {
  lazy_status.updates,
  cond = conditions.outdated_plugins,
  color = { fg = colors.accent },
})

ins_comp("lualine_x", { "location" })

ins_comp("lualine_x", { "progress" })

ins_comp("lualine_x", {
  "filesize",
  cond = conditions.buffer_not_empty,
})

ins_comp("lualine_x", {
  "o:encoding", -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
})

ins_comp("lualine_x", {
  "fileformat",
  fmt = string.upper,
  icons_enabled = false,
})

return config
