return {
  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    opts = require("configs.nvim-tree"),
    config = function(_, opts)
      require("nvim-tree").setup(opts)
      vim.g.nvimtree_side = opts.view.side
    end,
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", "Toggle explorer" },
    },
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim",  build = "make" },
      { "nvim-telescope/telescope-file-browser.nvim" },
    },
    opts = require("configs.telescope"),
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)

      -- load extensions
      for _, ext in ipairs(opts.extensions_list) do
        telescope.load_extension(ext)
      end
    end,
    keys = {
      -- find
      { "<leader>ff", "<cmd> Telescope find_files <CR>",  "Find files" },
      {
        "<leader>fa",
        "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>",
        "Find all",
      },
      { "<leader>fg", "<cmd> Telescope diagnostics <CR>", "List Diagnostics" },
      { "<leader>fw", "<cmd> Telescope live_grep <CR>",   "Live grep" },
      { "<leader>fb", "<cmd> Telescope buffers <CR>",     "Find buffers" },
      { "<leader>fh", "<cmd> Telescope help_tags <CR>",   "Help page" },
      { "<leader>fo", "<cmd> Telescope oldfiles <CR>",    "Find oldfiles" },
      {
        "<leader>fz",
        "<cmd> Telescope current_buffer_fuzzy_find <CR>",
        "Find in current buffer",
      },

      -- file browser
      { "<leader>fr", "<cmd> Telescope file_browser <CR>", "File Browser" },

      -- lsp
      {
        "<leader>fs",
        "<cmd> Telescope lsp_document_symbols <CR>",
        "Document Symbols",
      },

      -- git
      { "<leader>cm", "<cmd> Telescope git_commits <CR>",  "Git commits" },
      { "<leader>gt", "<cmd> Telescope git_status <CR>",   "Git status" },

      {
        "<leader>ma",
        "<cmd> Telescope marks <CR>",
        "telescope bookmarks",
      },
    },
  },

  -- Keymaps cheatsheet
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    opts = require("configs.which-key"),
    config = function(_, opts) require("which-key").setup(opts) end,
  },

  -- Git integration
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = require("configs.gitsigns"),
    config = function(_, opts) require("gitsigns").setup(opts) end,
  },

  -- Smart and powerful comment plugin for neovim.
  -- Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more
  {
    "numToStr/Comment.nvim",
    config = function() require("Comment").setup() end,
  },

  -- Finds and lists all of the TODO, HACK, BUG, etc comment in your project and loads them into a browsable list
  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    opts = {},
    -- stylua: ignore
    keys = {
      { "]t",         function() require("todo-comments").jump_next() end,              desc = "Next Todo Comment" },
      { "[t",         function() require("todo-comments").jump_prev() end,              desc = "Previous Todo Comment" },
      { "<leader>xt", "<cmd>Trouble todo toggle<cr>",                                   desc = "Todo (Trouble)" },
      { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
      { "<leader>st", "<cmd>TodoTelescope<cr>",                                         desc = "Todo" },
      { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>",                 desc = "Todo/Fix/Fixme" },
    },
  },

  -- Hihglight colors
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
}
