local lazy_status = require("lazy.status") -- to configure lazy pending updates count

local conditions = {
  outdated_plugins = function() return lazy_status.has_updates() end,
  buffer_not_empty = function() return vim.fn.empty(vim.fn.expand("%:t")) ~= 1 end,
  hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
}

local colors = {
  accent = "#528BFF",
  bg0 = "#282c34",
  bg1 = "#31353f",
  blue = "#61afef",
  cyan = "#56b6c2",
  fg = "#9da5b4",
  green = "#98c379",
  magenta = "#c678dd",
  red = "#e86671",
  white = "#5c6370",
  yellow = "#e5c07b",
}

local mode_theme = { fg = colors.fg, bg = colors.bg1 }

local config = {
  options = {
    globalstatus = true, -- have a single statusline at bottom of neovim instead of one for  every window
    component_separators = "",
    section_separators = "",
    theme = {
      -- all modes defaults to normal.
      -- you can specify a theme for all sections a,b,c x,y,z
      -- if a theme is not specified for x,y,z then they default to the c,b,a theme respectively
      normal = { a = mode_theme, c = mode_theme },
      inactive = { a = mode_theme, c = mode_theme },
    },
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

-- Inserts a component in lualine_a at left section
local function ins_first(component)
  table.insert(config.sections.lualine_a, component)
end

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x at right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

-- Add components to the beginning of lualine

ins_first({
  "mode",
  icon = "",
  color = function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.blue,
      i = colors.green,
      v = colors.yellow,
      c = colors.purple,
    }
    return { fg = mode_color[vim.fn.mode()], gui = "bold" }
  end,
})

-- Add components to left sections

ins_left({
  "branch",
  icon = "󰊤",
})

ins_left({
  "filename",
  icon = "󰈔",
  file_status = false,
  newfile_status = false,
  symbols = { unnamed = "" },
})

ins_left({
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = " ", warn = " ", info = " " },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
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
  cond = conditions.outdated_plugins,
  color = { fg = colors.accent, gui = "bold" },
})

ins_right({ "location" })

ins_right({ "progress" })

ins_right({
  "filesize",
  cond = conditions.buffer_not_empty,
})

ins_right({
  "o:encoding", -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
})

ins_right({
  "fileformat",
  fmt = string.upper,
  icons_enabled = true,
})

return config
