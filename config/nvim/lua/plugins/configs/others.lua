local M = {}
local utils = require("core.utils")

M.blankline = {
  indentLine_enabled = 1,
  filetype_exclude = {
    "help",
    "terminal",
    "NvimTree",
    "lazy",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "mason",
    "",
  },
  buftype_exclude = { "terminal" },
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  show_current_context = true,
  show_current_context_start = false,
}

M.gitsigns = {
  signs = {
    add = { text = "│" },
    change = { text = "│" },
    delete = { text = "󰍵" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "│" },
  },
  on_attach = function(bufnr)
    utils.map("gitsigns", { buffer = bufnr })
  end,
}

M.surround = {
  highlight_duration = 500,
  mappings = {
    add = "sa",            -- Add surrounding in Normal and Visual modes
    delete = "sd",         -- Delete surrounding
    find = "sf",           -- Find surrounding (to the right)
    find_left = "sF",      -- Find surrounding (to the left)
    highlight = "sh",      -- Highlight surrounding
    replace = "sr",        -- Replace surrounding
    update_n_lines = "sn", -- Update `n_lines`
    suffix_last = "l",     -- Suffix to search with "prev" method
    suffix_next = "n",     -- Suffix to search with "next" method
  },
}

M.whichkey = {
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "-", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
}

M.gopher = {
  commands = {
    go = "go",
    gomodifytags = "gomodifytags",
    gotests = "~/go/bin/gotests", -- also you can set custom command path
    impl = "impl",
    iferr = "iferr",
  },
}

return M
