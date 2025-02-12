return {
  -- Colorscheme
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    lazy = false,
    priority = 1000,
    opts = function() return require("plugins.colors.ayu") end,
    config = function(_, opts)
      require("ayu").setup(opts)
      vim.cmd("colorscheme ayu")
    end,
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = require("plugins.opts.nvim-tree"),
    config = function(_, opts)
      require("nvim-tree").setup(opts)
      vim.g.nvimtree_side = opts.view.side
    end,
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", "Toggle explorer" },
      {
        "<leader>fe",
        "<cmd>NvimTreeFindFileToggle<CR>",
        "Toggle file explorer",
      },
      {
        "<leader>re",
        "<cmd>NvimTreeRefresh<CR>",
        "Refresh file explorer",
      },
    },
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = require("plugins.opts.bufferline"),
    config = function(_, opts)
      local bufferline = require("bufferline")
      opts.options.style_preset = bufferline.style_preset.minimal
      bufferline.setup(opts)
    end,
    keys = {
      {
        "<leader>bp",
        "<Cmd>BufferLineTogglePin<CR>",
        desc = "Toggle Pin",
      },
      {
        "<leader>bP",
        "<Cmd>BufferLineGroupClose ungrouped<CR>",
        desc = "Delete Non-Pinned Buffers",
      },
      {
        "<leader>br",
        "<Cmd>BufferLineCloseRight<CR>",
        desc = "Delete Buffers to the Right",
      },
      {
        "<leader>bl",
        "<Cmd>BufferLineCloseLeft<CR>",
        desc = "Delete Buffers to the Left",
      },
      {
        "<S-h>",
        "<cmd>BufferLineCyclePrev<cr>",
        desc = "Prev Buffer",
      },
      {
        "<S-l>",
        "<cmd>BufferLineCycleNext<cr>",
        desc = "Next Buffer",
      },
      {
        "[b",
        "<cmd>BufferLineCyclePrev<cr>",
        desc = "Prev Buffer",
      },
      {
        "]b",
        "<cmd>BufferLineCycleNext<cr>",
        desc = "Next Buffer",
      },
      {
        "[B",
        "<cmd>BufferLineMovePrev<cr>",
        desc = "Move buffer prev",
      },
      {
        "]B",
        "<cmd>BufferLineMoveNext<cr>",
        desc = "Move buffer next",
      },
    },
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    cond = vim.g.simplified_ui == false,
    config = function(_, opts) 
      require("lualine").setup({
        options = {
          theme = require("material.lualine"),
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
          disabled_filetypes = { "dashboard", "startify", "packer" },
          globalstatus = true,
        },
      })
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-file-browser.nvim" },
    },
    opts = require("plugins.opts.telescope"),
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
      { "<leader>ff", "<cmd> Telescope find_files <CR>", "Find files" },
      {
        "<leader>fa",
        "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>",
        "Find all",
      },
      { "<leader>fg", "<cmd> Telescope diagnostics <CR>", "List Diagnostics" },
      { "<leader>fw", "<cmd> Telescope live_grep <CR>", "Live grep" },
      { "<leader>fb", "<cmd> Telescope buffers <CR>", "Find buffers" },
      { "<leader>fh", "<cmd> Telescope help_tags <CR>", "Help page" },
      { "<leader>fo", "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
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
      { "<leader>cm", "<cmd> Telescope git_commits <CR>", "Git commits" },
      { "<leader>gt", "<cmd> Telescope git_status <CR>", "Git status" },

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
    opts = require("plugins.opts.which-key"),
    config = function(_, opts) require("which-key").setup(opts) end,
  },

  -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        hide_cursor = true,
      })
    end,
  },

  -- Improved buffer delete
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

  -- Smart and powerful comment plugin for neovim.
  -- Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more
  {
    "numToStr/Comment.nvim",
    config = function() require("Comment").setup() end,
  },

  -- Hihglight colors
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
}
