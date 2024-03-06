local lazy_status = require("lazy.status") -- to configure lazy pending updates count

local colors = {
  pale = {
    accent = "#AB47BC",
    bg = "#292d3e",
    blue = "#82aaff",
    cyan = "#89ddff",
    fg = "#676e95",
    green = "#c3e88d",
    magenta = "#c792ea",
    red = "#f07178",
    white = "#d0d0d0",
    yellow = "#ffcb6b",
  },
  oceanic = {
    accent = "#11bba3",
    bg = "#192227",
    blue = "#61afef",
    cyan = "#56b6c2",
    fg = "#546e7a",
    green = "#98c379",
    magenta = "#c678dd",
    red = "#e86671",
    white = "#5c6370",
    yellow = "#e5c07b",
  },
  onedark = {
    accent = "#D55FDE",
    bg = "21252b",
    blue = "#61afef",
    cyan = "#56b6c2",
    fg = "#9da5b4",
    green = "#98c379",
    magenta = "#c678dd",
    red = "#e86671",
    white = "#5c6370",
    yellow = "#e5c07b",
  },
}

local theme = colors.onedark

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
      normal = { c = { fg = theme.fg, bg = colors.bg } },
      inactive = { c = { fg = theme.fg, bg = colors.bg } },
    },
    globalstatus = true,
    -- disabled_filetypes = { "NvimTree" },
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
  -- extensions = {
  --   "nvim-tree",
  --   "mason",
  --   "lazy",
  -- },
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
  icon = "󰊤",
  color = { fg = theme.fg },
})

ins_left({
  "filename",
  icon = "󰈔",
  symbols = {
    modified = "[+]", -- Text to show when the file is modified.
    readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
    unnamed = "", -- Text to show for unnamed buffers.
    newfile = "[New]", -- Text to show for newly created file before first write
  },
})

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
  color = { fg = theme.accent, gui = "bold" },
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
