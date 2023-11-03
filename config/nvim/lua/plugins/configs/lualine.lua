local g = vim.g
local lazy_status = require("lazy.status") -- to configure lazy pending updates count

-- custom themes
local themes = {
  frappe = {
    bg = "#292c3c",
    fg = "#c6d0f5",
    white = "#b5bfe2",
    yellow = "#e5c890",
    cyan = "#81c8be",
    green = "#a6d189",
    magenta = "#f4b8e4",
    blue = "#8caaee",
    red = "#e78284",
  },
  mocha = {
    bg = "#1e1e2e",
    fg = "#cdd6f4",
    white = "#bac2de",
    yellow = "#f9e2af",
    cyan = "#94e2d5",
    green = "#a6e3a1",
    magenta = "#f5c2e7",
    blue = "#89b4fa",
    red = "#f38ba8",
  }
}

-- Color table for highlights
-- stylua: ignore

local conditions = {
  has_plugin_updates = function() return lazy_status.has_updates() end,
  buffer_not_empty = function() return vim.fn.empty(vim.fn.expand("%:t")) ~= 1 end,
  hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
  check_git_workspace = function()
    local filepath = vim.fn.expand("%:p:h")
    local gitdir = vim.fn.finddir(".git", filepath .. ";")
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local theme = themes.frappe
local bg = g.transparency and "NONE" or theme.bg

local config = {
  options = {
    component_separators = "",
    section_separators = "",
    theme = {
      normal = { c = { fg = theme.fg, bg = bg } },
      inactive = { c = { fg = theme.fg, bg = bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left({
  function() return "🐶" end,
})

ins_left({
  "filesize",
  cond = conditions.buffer_not_empty,
})

ins_left({
  "filename",
  cond = conditions.buffer_not_empty,
  color = { fg = theme.magenta, gui = "bold" },
})

ins_left({ "location" })

ins_left({ "progress", color = { fg = theme.fg, gui = "bold" } })

ins_left({
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = " ", warn = " ", info = " " },
  diagnostics_color = {
    color_error = { fg = theme.red },
    color_warn = { fg = theme.yellow },
    color_info = { fg = theme.cyan },
  },
})

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left({
  function() return "%=" end,
})

-- Add components to right sections
ins_right({
  lazy_status.updates,
  cond = lazy_status.has_updates,
  color = { fg = theme.cyan, gui = "bold" },
})

ins_right({
  "o:encoding",       -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = theme.green, gui = "bold" },
})

ins_right({
  "fileformat",
  fmt = string.upper,
  icons_enabled = true,
  color = { fg = theme.green, gui = "bold" },
})

ins_right({
  "branch",
  icon = "",
  color = { fg = theme.magenta, gui = "bold" },
})

return config
