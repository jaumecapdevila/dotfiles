return {
  -- Define your formatters
  formatters_by_ft = {
    astro = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    svelte = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    graphql = { "prettier" },
    lua = { "stylua" },
    python = { "isort", "black" },
  },

  -- Set default options
  default_format_opts = {
    lsp_format = "fallback",
  },

  -- Set up format-on-save
  format_on_save = { timeout_ms = 500 },
}
