local M = {}
local u = require("utils")
local k = require("config.keymaps")

M.gitsigns = {
  signs = {
    add = { text = "│" },
    change = { text = "│" },
    delete = { text = "│" },
    topdelete = { text = "│" },
    changedelete = { text = "│" },
    untracked = { text = "│" },
  },
  on_attach = function(bufnr) u.map(k.gitsigns, { buffer = bufnr }) end,
}

M.surround = {
  highlight_duration = 500,
  mappings = {
    add = "sa", -- Add surrounding in Normal and Visual modes
    delete = "sd", -- Delete surrounding
    find = "sf", -- Find surrounding (to the right)
    find_left = "sF", -- Find surrounding (to the left)
    highlight = "sh", -- Highlight surrounding
    replace = "sr", -- Replace surrounding
    update_n_lines = "sn", -- Update `n_lines`
    suffix_last = "l", -- Suffix to search with "prev" method
    suffix_next = "n", -- Suffix to search with "next" method
  },
}

M.whichkey = {
  show_help = false,
  show_keys = false,
  icons = {
    breadcrumb = "", -- symbol used in the command line area that shows your active key combo
    separator = "", -- symbol used between a key and it's label
    group = "󰐗 ", -- symbol prepended to a group
  },
  window = {
    border = "single",
    position = "bottom", -- bottom, top
  },
}

return M
