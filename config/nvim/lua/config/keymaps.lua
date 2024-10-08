-- n, v, i, t = mode names

local M = {}

local u = require("utils")

M.general = {
  i = {
    -- go to  beginning and end
    ["<C-b>"] = { "<ESC>^i", "Beginning of line" },
    ["<C-e>"] = { "<End>", "End of line" },

    -- navigate within insert mode
    ["<C-h>"] = { "<Left>", "Move left" },
    ["<C-l>"] = { "<Right>", "Move right" },
    ["<C-j>"] = { "<Down>", "Move down" },
    ["<C-k>"] = { "<Up>", "Move up" },
  },

  n = {
    ["<Esc>"] = { "<cmd>noh<cr><esc>", "Clear highlights" },

    -- switch between windows
    ["<C-h>"] = { "<C-w>h", "Window left" },
    ["<C-l>"] = { "<C-w>l", "Window right" },
    ["<C-j>"] = { "<C-w>j", "Window down" },
    ["<C-k>"] = { "<C-w>k", "Window up" },

    -- window management
    ["<leader>ww"] = { "<C-W>p", "Other window" },
    ["<leader>wd"] = { "<C-W>c", "Delete window" },
    ["<leader>w-"] = { "<C-W>s", "Split window below" },
    ["<leader>w|"] = { "<C-W>v", "Split window right" },
    ["<leader>-"] = { "<C-W>s", "Split window below" },
    ["<leader>|"] = { "<C-W>v", "Split window right" },
    ["<C-Up>"] = { "<cmd>resize +2<cr>", "Increase window height" },
    ["<C-Down>"] = { "<cmd>resize -2<cr>", "Decrease window height" },
    ["<C-Left>"] = { "<cmd>vertical resize -2<cr>", "Decrease window width" },
    ["<C-Right>"] = { "<cmd>vertical resize +2<cr>", "Increase window width" },

    -- buffer managenent
    ["<leader>bo"] = { "<cmd> %bd | e# <CR>", "Close other buffers" },
    ["<leader>bd"] = { "<cmd> bd <CR>", "Delete buffer" },
    ["<leader>bn"] = { "<cmd> bn <CR>", "Next buffer" },
    ["<leader>bp"] = { "<cmd> bp <CR>", "Prev buffer" },

    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "Save file" },

    -- Copy all
    ["<C-c>"] = { "<cmd> %y+ <CR>", "Copy whole file" },

    -- line numbers
    ["<leader>n"] = { "<cmd> set nu! <CR>", "Toggle line number" },
    ["<leader>rn"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },

    -- utils
    ["<leader>wf"] = { "<cmd>enew<cr>", "New file" },
    ["<leader>qq"] = { "<cmd>qa<cr>", "Quit all" },
    ["<leader>cl"] = { "<cmd>LspInfo<cr>", "Lsp info" },

    -- diagnostic
    ["<leader>cd"] = { vim.diagnostic.open_float, "Line diagnostics" },
    ["]d"] = { u.diagnostic_goto(true), "Next Diagnostic" },
    ["[d"] = { u.diagnostic_goto(false), "Prev Diagnostic" },
    ["]e"] = { u.diagnostic_goto(true, "ERROR"), "Next Error" },
    ["[e"] = { u.diagnostic_goto(false, "ERROR"), "Prev Error" },
    ["]w"] = { u.diagnostic_goto(true, "WARNING"), "Next Warning" },
    ["[w"] = { u.diagnostic_goto(false, "WARNING"), "Prev Warning" },

    -- terminal
    ["<C-t>"] = { ":Term<CR>", "Open terminal" },
  },

  t = {
    ["<Esc>"] = { "<c-\\><c-n>", "Enter Normal Mode" },
    ["<C-h>"] = { "<cmd>wincmd h<cr>", "Go to left window" },
    ["<C-j>"] = { "<cmd>wincmd j<cr>", "Go to lower window" },
    ["<C-k>"] = { "<cmd>wincmd k<cr>", "Go to upper window" },
    ["<C-l>"] = { "<cmd>wincmd l<cr>", "Go to right window" },
    ["<C-/>"] = { "<cmd>close<cr>", "Hide Terminal" },
    ["<c-_>"] = { "<cmd>close<cr>", "which_key_ignore" },
  },
}

M.comment = {
  -- toggle comment in both modes
  n = {
    ["<leader>/"] = {
      function() require("Comment.api").toggle.linewise.current() end,
      "Toggle comment",
    },
  },

  v = {
    ["<leader>/"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

M.lspconfig = {
  -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
  n = {
    ["gd"] = {
      "<CMD>Glance definitions<CR>",
      "Glance definitions",
    },

    ["gr"] = {
      "<CMD>Glance references<CR>",
      "Glance references",
    },

    ["gi"] = {
      "<CMD>Glance implementations<CR>",
      "Glance implementations",
    },

    ["<leader>D"] = {
      "<CMD>Glance type_definitions<CR>",
      "Glance implementations",
    },

    ["<leader>ca"] = {
      function() vim.lsp.buf.code_action() end,
      "LSP code action",
    },

    ["<leader>rn"] = {
      function() vim.lsp.buf.rename() end,
      "LSP rename",
    },

    ["gD"] = {
      function() vim.lsp.buf.declaration() end,
      "LSP declaration",
    },

    ["K"] = {
      function() vim.lsp.buf.hover() end,
      "LSP hover",
    },

    ["<leader>ls"] = {
      function() vim.lsp.buf.signature_help() end,
      "LSP signature help",
    },

    ["<leader>q"] = {
      function() vim.diagnostic.setloclist() end,
      "Diagnostic setloclist",
    },

    ["<leader>fm"] = {
      function() vim.lsp.buf.format({ async = true }) end,
      "LSP formatting",
    },
  },
}

M.nvim_tree = {
  n = {
    -- toggle
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.telescope = {
  n = {
    -- find
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>fa"] = {
      "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>",
      "Find all",
    },
    ["<leader>fg"] = { "<cmd> Telescope diagnostics <CR>", "List Diagnostics" },
    ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
    ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
    ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "Help page" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
    ["<leader>fz"] = {
      "<cmd> Telescope current_buffer_fuzzy_find <CR>",
      "Find in current buffer",
    },

    -- file browser
    ["<leader>fr"] = { "<cmd> Telescope file_browser <CR>", "File Browser" },

    -- lsp
    ["<leader>fs"] = {
      "<cmd> Telescope lsp_document_symbols <CR>",
      "Document Symbols",
    },

    -- git
    ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
    ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "Git status" },

    ["<leader>ma"] = { "<cmd> Telescope marks <CR>", "telescope bookmarks" },
  },
}

M.whichkey = {
  n = {
    ["<leader>wK"] = {
      function() vim.cmd("WhichKey") end,
      "Which-key all keymaps",
    },
    ["<leader>wk"] = {
      function()
        local input = vim.fn.input("WhichKey: ")
        vim.cmd("WhichKey " .. input)
      end,
      "Which-key query lookup",
    },
  },
}

M.gitsigns = {
  n = {
    -- Navigation through hunks
    ["]c"] = {
      function()
        if vim.wo.diff then return "]c" end
        vim.schedule(function() require("gitsigns").next_hunk() end)
        return "<Ignore>"
      end,
      "Jump to next hunk",
      opts = { expr = true },
    },

    ["[c"] = {
      function()
        if vim.wo.diff then return "[c" end
        vim.schedule(function() require("gitsigns").prev_hunk() end)
        return "<Ignore>"
      end,
      "Jump to prev hunk",
      opts = { expr = true },
    },

    -- Actions
    ["<leader>rh"] = {
      function() require("gitsigns").reset_hunk() end,
      "Reset hunk",
    },

    ["<leader>ph"] = {
      function() require("gitsigns").preview_hunk() end,
      "Preview hunk",
    },

    ["<leader>gb"] = {
      function() package.loaded.gitsigns.blame_line() end,
      "Blame line",
    },

    ["<leader>td"] = {
      function() require("gitsigns").toggle_deleted() end,
      "Toggle deleted",
    },
  },
}

return M
