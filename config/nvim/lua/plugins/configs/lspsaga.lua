local options = {
  ui = {
    -- This option only works in Neovim 0.9
    title = true,
    -- Border type can be single, double, rounded, solid, shadow.
    border = "rounded",
    winblend = 0,
    expand = " ",
    collapse = " ",
    code_action = "💡",
    incoming = " ",
    outgoing = " ",
    hover = " ",
  },
  symbol_in_winbar = {
    enable = false,
    separator = " ",
  },
  beacon = {
    enable = false,
  },
  finder = {
    keys = {
      jump_to = "p",
      expand_or_jump = "o",
      vsplit = "s",
      split = "i",
      tabe = "t",
      tabnew = "r",
      quit = { "q", "<ESC>" },
      close_in_preview = "<ESC>",
    },
  },
}

return options
