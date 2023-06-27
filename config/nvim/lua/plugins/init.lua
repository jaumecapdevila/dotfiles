local mappings = require("core.mappings")

local default_plugins = {
  "nvim-lua/plenary.nvim",

  -- colorschemes
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    opts = function()
      return require("plugins.configs.colors").tokyonight
    end,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight")
    end,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
    opts = function()
      return require("plugins.configs.colors").catppuccin
    end,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd("colorscheme catppuccin")
    end,
  },

  {
    "nvim-tree/nvim-web-devicons",
    config = function(_, opts) require("nvim-web-devicons").setup(opts) end,
  },

  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function() return require("plugins.configs.dashboard") end,
    config = function(_, dashboard) require("alpha").setup(dashboard.opts) end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
    event = { "BufReadPost", "BufNewFile" },
    opts = function() return require("plugins.configs.others").blankline end,
    config = function(_, opts) require("indent_blankline").setup(opts) end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function() return require("plugins.configs.treesitter") end,
    config = function(_, opts) require("nvim-treesitter.configs").setup(opts) end,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPre",
    opts = { mode = "cursor" },
  },

  -- git stuff
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = function() return require("plugins.configs.others").gitsigns end,
    config = function(_, opts) require("gitsigns").setup(opts) end,
  },

  -- lsp stuff
  {
    "williamboman/mason.nvim",
    cmd = {
      "Mason",
      "MasonInstall",
      "MasonInstallAll",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog",
    },
    opts = function() return require("plugins.configs.mason") end,
    config = function(_, opts)
      require("mason").setup(opts)

      -- custom cmd to install all mason binaries listed
      vim.api.nvim_create_user_command(
        "MasonInstallAll",
        function()
          vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
        end,
        {}
      )

      vim.g.mason_binaries_list = opts.ensure_installed
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      {
        -- format & linting
        "jose-elias-alvarez/null-ls.nvim",
        config = function() require("plugins.configs.null-ls") end,
      },
    },
    config = function() require("plugins.configs.lspconfig") end,
  },

  {
    "glepnir/lspsaga.nvim",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
    event = "LspAttach",
    opts = function() return require("plugins.configs.lspsaga") end,
    config = function(_, opts) require("lspsaga").setup(opts) end,
  },

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

  -- Easily toggle comments
  {
    "numToStr/Comment.nvim",
    keys = { "gcc", "gbc" },
    init = function() require("core.utils").load_mappings(mappings.comment) end,
    config = function() require("Comment").setup() end,
  },

  -- file managing
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    init = function() require("core.utils").load_mappings(mappings.nvimtree) end,
    opts = function() return require("plugins.configs.nvimtree") end,
    config = function(_, opts)
      require("nvim-tree").setup(opts)
      vim.g.nvimtree_side = opts.view.side
    end,
  },

  -- fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim",  build = "make" },
      { "nvim-telescope/telescope-file-browser.nvim" },
    },
    init = function() require("core.utils").load_mappings(mappings.telescope) end,
    opts = function() return require("plugins.configs.telescope") end,
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)

      -- load extensions
      for _, ext in ipairs(opts.extensions_list) do
        telescope.load_extension(ext)
      end
    end,
  },

  -- only load whichkey after all the gui
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = { "<leader>", '"', "'", "`", "c", "v" },
    init = function() require("core.utils").load_mappings(mappings.whichkey) end,
    opts = function() return require("plugins.configs.others").whichkey end,
    config = function(_, opts) require("which-key").setup(opts) end,
  },

  -- smooth scrolling
  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    config = function() require("neoscroll").setup() end,
  },

  -- autoclose tags in html, jsx only
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function() require("nvim-ts-autotag").setup() end,
  },

  -- golang
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    opts = function() return require("plugins.configs.others").gopher end,
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings(mappings.gopher)
    end,
    build = function() vim.cmd([[silent! GoInstallDeps]]) end,
  },

  -- dim inactive windows
  {
    "andreadev-it/shade.nvim",
    enabled = true,
    keys = "<Bslash>",
    config = function()
      require("shade").setup({
        exclude_filetypes = { "NvimTree" },
      })
    end,
  },

  -- profile nvim startup time
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
    config = function() vim.g.startuptime_tries = 10 end,
  },

  -- display lsp symbols
  {
    "simrat39/symbols-outline.nvim",
    keys = {
      { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" },
    },
    opts = function() return require("plugins.configs.others").symbols_outline end,
    config = function(_, opts) require("symbols-outline").setup(opts) end,
  },

  -- easily move between buffers
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      {
        "<leader>bP",
        "<Cmd>BufferLineGroupClose ungrouped<CR>",
        desc = "Delete non-pinned buffers",
      },
    },
    init = function() require("core.utils").load_mappings(mappings.bufferline) end,
    opts = function() return require("plugins.configs.bufferline") end,
    config = function(_, opts) require("bufferline").setup(opts) end,
  },

  -- custom statusline
  {
    "nvim-lualine/lualine.nvim",
    -- event = "VeryLazy",
    opts = function() return require("plugins.configs.lualine") end,
    config = function(_, opts) require("lualine").setup(opts) end,
  },

  -- error lense
  {
    "folke/trouble.nvim",
    enabled = false,
    cmd = "Trouble",
    opts = function() return require("plugins.configs.others").trouble end,
    config = function(_, opts) require("trouble").setup(opts) end,
  },

  -- Git UI
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>lg",
        function() require("lazygit").lazygit() end,
        desc = "LazyGit",
      },
    },
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

  -- improved buffer delete
  {
    "famiu/bufdelete.nvim",
    keys = {
      {
        "<leader>bd",
        function() require("bufdelete").bufdelete(0, false) end,
        desc = "Delete Buffer",
      },
      {
        "<leader>bD",
        function() require("bufdelete").bufdelete(0, true) end,
        desc = "Delete Buffer (Force)",
      },
    },
  },
}

local lazy_opts = require("plugins.configs.lazy")

require("lazy").setup(default_plugins, lazy_opts)
