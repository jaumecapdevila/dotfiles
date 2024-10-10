return {
  -- Main options --
  style = "deep",                  -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = vim.g.transparent, -- Show/hide background
  term_colors = true,              -- Change terminal color as per the selected theme style
  ending_tildes = false,           -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false,    -- reverse item kind highlights in cmp menu

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = "italic",
    keywords = "italic,bold",
    functions = "bold",
    strings = "none",
    variables = "none",
  },

  -- Custom Highlights --
  colors = {
    accent = "#568af2",
  },
  highlights = {
    -- Syntax
    ["@variable.parameter"] = { fg = '$fg' },
    ["@variable.member"] = { fg = '$orange' },
    ["@punctuation.special"] = { fg = '$light_grey' },
    ["@tag.delimiter"] = { fg = '$light_grey' },

    -- Telescope
    TelescopeBorder = { fg = "$accent" },
    TelescopeResultsBorder = { fg = "$accent" },
    TelescopePreviewBorder = { fg = "$accent" },
    TelescopePromptBorder = { fg = "$accent" },
    TelescopePromptPrefix = { fg = "$accent" },
  },

  -- Plugins Config --
  diagnostics = {
    darker = false,     -- darker colors for diagnostic
    undercurl = true,   -- use undercurl instead of underline for diagnostics
    background = false, -- use background color for virtual text
  },
}
