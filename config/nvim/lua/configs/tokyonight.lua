return {
  style = "storm", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = vim.g.transparent, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  dim_inactive = false, -- dims inactive windows

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param hl tokyonight.Highlights
  ---@param c ColorScheme
  on_highlights = function(hl, c)
    -- File explorer
    hl.NvimTreeFolderIcon = { fg = c.blue }
    hl.NvimTreeFolderName = { fg = c.blue }

    -- Borderless telescope
    local prompt = "#2d3149"
    hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark, }
    hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark, }
    hl.TelescopePromptNormal = { bg = prompt, } 
    hl.TelescopePromptBorder = { bg = prompt, fg = prompt, }
    hl.TelescopePromptTitle = { bg = prompt, fg = prompt, }
    hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark, }
    hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark, }
  end,

  cache = true, -- When set to true, the theme will be cached for better performance
}
