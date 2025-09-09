return {
  highlights = {
    NotifyBackground = { bg = "${bg}", fg = "${fg}" },
    TelescopeBorder = { bg = "NONE", fg = "${blue}" },
  }, -- Override default highlight groups or create your own
  styles = { -- For example, to apply bold and italic, use "bold,italic"
    types = "italic", -- Style that is applied to types
    methods = "bold,italic", -- Style that is applied to methods
    numbers = "bold", -- Style that is applied to numbers
    strings = "italic", -- Style that is applied to strings
    comments = "italic", -- Style that is applied to comments
    keywords = "italic", -- Style that is applied to keywords
    constants = "bold", -- Style that is applied to constants
    functions = "bold,italic", -- Style that is applied to functions
    operators = "bold", -- Style that is applied to operators
    variables = "NONE", -- Style that is applied to variables
    parameters = "NONE", -- Style that is applied to parameters
    conditionals = "italic", -- Style that is applied to conditionals
    virtual_text = "NONE", -- Style that is applied to virtual text
  },
  plugins = { -- Override which plugin highlight groups are loaded
    copilot = true,
    gitsigns = true,
    indentline = true,
    lsp_semantic_tokens = true,
    nvim_cmp = true,
    nvim_lsp = true,
    nvim_notify = true,
    nvim_tree = true,
    telescope = true,
    treesitter = true,
    vim_ultest = true,
    which_key = true,
  },
  options = {
    cursorline = true, -- Use cursorline highlighting?
    transparency = vim.g.transparent, -- Use a transparent background?
    terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    lualine_transparency = vim.g.transparent, -- Center bar transparency?
    highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
  },
}
