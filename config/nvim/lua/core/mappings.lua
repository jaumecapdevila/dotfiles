-- n, v, i, t = mode names

local M = {}

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

    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "Save file" },

    -- Copy all
    ["<C-c>"] = { "<cmd> %y+ <CR>", "Copy whole file" },

    -- line numbers
    ["<leader>n"] = { "<cmd> set nu! <CR>", "Toggle line number" },
    ["<leader>rn"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },

    -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
    -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
    -- empty mode is same as using <cmd> :map
    -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
    ["j"] = {
      'v:count || mode(1)[0:1] == "no" ? "j" : "gj"',
      "Move down",
      opts = { expr = true },
    },
    ["k"] = {
      'v:count || mode(1)[0:1] == "no" ? "k" : "gk"',
      "Move up",
      opts = { expr = true },
    },
    ["<Up>"] = {
      'v:count || mode(1)[0:1] == "no" ? "k" : "gk"',
      "Move up",
      opts = { expr = true },
    },
    ["<Down>"] = {
      'v:count || mode(1)[0:1] == "no" ? "j" : "gj"',
      "Move down",
      opts = { expr = true },
    },

    -- new buffer
    -- ["<leader>b"] = { "<cmd> enew <CR>", "New buffer" },

    -- utils
    ["<leader>qq"] = { "<cmd>qa<cr>", "Quit all" },
  },

  t = {
    ["<C-x>"] = {
      vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
      "Escape terminal mode",
    },
  },

  v = {
    ["<Up>"] = {
      'v:count || mode(1)[0:1] == "no" ? "k" : "gk"',
      "Move up",
      opts = { expr = true },
    },
    ["<Down>"] = {
      'v:count || mode(1)[0:1] == "no" ? "j" : "gj"',
      "Move down",
      opts = { expr = true },
    },
  },

  x = {
    ["j"] = {
      'v:count || mode(1)[0:1] == "no" ? "j" : "gj"',
      "Move down",
      opts = { expr = true },
    },
    ["k"] = {
      'v:count || mode(1)[0:1] == "no" ? "k" : "gk"',
      "Move up",
      opts = { expr = true },
    },
    -- Don't copy the replaced text after pasting in visual mode
    -- https://vim.fandom.com/wiki/Replace_a_word_with_yanked_text#Alternative_mapping_for_paste
    ["p"] = {
      'p:let @+=@0<CR>:let @"=@0<CR>',
      "Dont copy replaced text",
      opts = { silent = true },
    },
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
      "LSP rename",
    },

    ["<leader>rn"] = {
      function() vim.lsp.buf.rename() end,
      "LSP rename",
    },

    ["gD"] = {
      function() vim.lsp.buf.declaration() end,
      "LSP declaration",
    },

    ["<leader>ls"] = {
      function() vim.lsp.buf.signature_help() end,
      "LSP signature help",
    },

    ["<leader>q"] = {
      function() vim.diagnostic.setloclist() end,
      "Diagnostic setloclist",
    },

    -- ["<leader>fm"] = {
    --   function() vim.lsp.buf.format({ async = true }) end,
    --   "LSP formatting",
    -- },
  },
}

M.formatter = {
  n = {
    ["<leader>rc"] = {
      "<cmd> Format <CR>",
      "Reformat Code",
    },
    ["<leader>rw"] = {
      "<cmd> FormatWrite <CR>",
      "Reformat Code Write",
    },
  }
}

M.nvimtree = {
  n = {
    -- toggle
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.bufferline = {
  n = {
    ["<tab>"] = {
      "<Cmd>BufferLineCycleNext<CR>",
      "Goto next buffer",
    },

    ["<S-tab>"] = {
      "<Cmd>BufferLineCyclePrev<CR>",
      "Goto prev buffer",
    },

    ["<leader>x"] = {
      "<Cmd>BufferLinePickClose<CR>",
      "Close buffer",
    },
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

M.blankline = {
  n = {
    ["<leader>cc"] = {
      function()
        local ok, start = require("indent_blankline.utils").get_current_context(
          vim.g.indent_blankline_context_patterns,
          vim.g.indent_blankline_use_treesitter_scope
        )

        if ok then
          vim.api.nvim_win_set_cursor(
            vim.api.nvim_get_current_win(),
            { start, 0 }
          )
          vim.cmd([[normal! _]])
        end
      end,

      "Jump to current context",
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

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require("dap.ui.widgets")
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  n = {
    ["<leader>dgt"] = {
      function() require("dap-go").debug_test() end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function() require("dap-go").debug_last() end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

M.code_action = {
  n = {
    ["<leader>ca"] = {
      "<cmd>CodeActionMenu<cr>",
      "Code Action Menu",
    },
  },
}

return M
