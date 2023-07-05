return {
  -- load luasnips + cmp related in insert mode only
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("plugins.configs.others").luasnip(opts)
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require("nvim-autopairs.completion.cmp")
          require("cmp").event:on(
            "confirm_done",
            cmp_autopairs.on_confirm_done()
          )
        end,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },
    opts = function() return require("plugins.configs.cmp") end,
    config = function(_, opts) require("cmp").setup(opts) end,
  },

  -- Github Copilot
  {
    "zbirenbaum/copilot.lua",
    opts = function() return require("plugins.configs.copilot") end,
    config = function(_, opts) require("copilot").setup(opts) end,
  },

  -- easily add, remove, change surroundings
  {
    "echasnovski/mini.surround",
    event = "VeryLazy",
    opts = function() return require("plugins.configs.others").surround end,
    config = function(_, opts) require("mini.surround").setup(opts) end,
  },

  -- autoclose tags in html, jsx only
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function() require("nvim-ts-autotag").setup() end,
  },

  -- Easily toggle comments
  {
    "numToStr/Comment.nvim",
    config = function() require("Comment").setup() end,
  },
}
