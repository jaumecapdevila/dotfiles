local options = {
  logging = false,
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettierd,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettierd,
    },
  },
}

return options
