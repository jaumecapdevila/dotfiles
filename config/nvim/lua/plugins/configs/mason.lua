local options = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "astro-language-server",
    "tailwindcss-language-server",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "eslint_d",
    "emmet-ls",
    "json-lsp",

    -- golang
    "gopls",
    "gofumpt",
    "goimports-reviser",
    "golines",

    -- python
    "pylint",

    -- php
    "phpactor",

    -- shell
    "shfmt",
    "shellcheck",
    "bash-language-server",
  }, -- not an option from mason.nvim

  PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
}

return options
