local lazy_status = require("lazy.status") -- to configure lazy pending updates count

-- custom theme
local theme = {
  fg = "#959dcb",
  red = "#f07178",
  green = "#c3e88d",
  yellow = "#ffcb6b",
  blue = "#82aaff",
  magenta = "#c792ea",
  cyan = "#89ddff",
  white = "#d0d0d0",
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

local config = {
  options = {
    component_separators = "",
    section_separators = "",
    theme = {
      normal = { c = { fg = theme.fg, bg = "NONE" } },
      inactive = { c = { fg = theme.fg, bg = "NONE" } },
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
  "branch",
  icon = "",
  color = { fg = theme.magenta, gui = "bold" },
})

ins_left({ "filename" })

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

ins_right({ "location" })

ins_right({ "progress", color = { fg = theme.fg, gui = "bold" } })

ins_right({
  "filesize",
  cond = conditions.buffer_not_empty,
})

ins_right({
  "o:encoding", -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = theme.fg, gui = "bold" },
})

ins_right({
  "fileformat",
  fmt = string.upper,
  icons_enabled = true,
  color = { fg = theme.fg, gui = "bold" },
})

return config
