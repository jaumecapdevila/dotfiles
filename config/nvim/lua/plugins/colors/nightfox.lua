return {
  options = {
    transparent = vim.g.transparent, -- Disable setting background
    dim_inactive = false, -- Non focused panes set to alternative background
    module_default = true, -- Default enable value for modules
    styles = { -- Style to be applied to different syntax groups
      comments = "italic", -- Value is any valid attr-list value `:help attr-list`
      conditionals = "bold,italic",
      constants = "bold",
      functions = "bold",
      keywords = "italic",
      numbers = "bold",
      operators = "bold",
      strings = "NONE",
      types = "italic",
      variables = "NONE",
    },
    inverse = { -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
  },
}
