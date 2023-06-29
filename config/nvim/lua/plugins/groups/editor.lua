return {
  -- file explorer
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    init = function() require("core.utils").map("nvimtree") end,
    opts = function() return require("plugins.configs.nvimtree") end,
    config = function(_, opts)
      require("nvim-tree").setup(opts)
      vim.g.nvimtree_side = opts.view.side
    end,
  },

  -- error lense
  {
    "folke/trouble.nvim",
    enabled = false,
    cmd = "Trouble",
    opts = function() return require("plugins.configs.others").trouble end,
    config = function(_, opts) require("trouble").setup(opts) end,
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

  -- fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim",  build = "make" },
      { "nvim-telescope/telescope-file-browser.nvim" },
    },
    init = function() require("core.utils").map("telescope") end,
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

  -- keymaps cheatsheet
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = { "<leader>", '"', "'", "`", "c", "v" },
    init = function() require("core.utils").map("whichkey") end,
    opts = function() return require("plugins.configs.others").whichkey end,
    config = function(_, opts) require("which-key").setup(opts) end,
  },

  -- dim inactive windows
  {
    "andreadev-it/shade.nvim",
    keys = "<Bslash>",
    config = function()
      require("shade").setup({
        exclude_filetypes = { "NvimTree" },
      })
    end,
  },

  -- smooth scrolling
  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    config = function() require("neoscroll").setup() end,
  },

  -- git stuff
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = function() return require("plugins.configs.others").gitsigns end,
    config = function(_, opts) require("gitsigns").setup(opts) end,
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
