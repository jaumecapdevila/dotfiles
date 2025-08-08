
return {
    contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = true, -- Enable contrast for floating windows
        cursor_line = true, -- Enable darker background for the cursor line
        lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
        non_current_windows = false, -- Enable contrasted background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true },
        strings = { italic = true },
        keywords = { italic = true, bold = true },
        functions = { bold = true },
        variables = {},
        operators = { bold = true},
        types = { italic = true, bold = true },
    },

    plugins = { -- Uncomment the plugins that you use to highlight them
        "gitsigns",
        "indent-blankline",
        "mini",
        -- "neo-tree",
        "nvim-cmp",
        "nvim-notify",
        "nvim-tree",
        "nvim-web-devicons",
        "rainbow-delimiters",
        "telescope",
        "which-key",
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = true, -- Disable borders between vertically split windows
        background = vim.g.transparent, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = true -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = true, -- Enable higher contrast text for lighter style
        darker = true -- Enable higher contrast text for darker style
    },

    lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )
    async_loading = true, -- Load parts of the theme asynchronously for faster startup (turned on by default)
    custom_colors = nil, -- If you want to override the default colors, set this to a function
    custom_highlights = {
        NvimTreeFolderName = { fg = "#C792EA", bold = true },
        NvimTreeFolderIcon = { fg = "#C792EA", bold = true },
        NvimTreeIndentMarker = { fg = "#C792EA", bold = true },
    }, -- Overwrite highlights with your own
}
