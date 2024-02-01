return {
  "Shatur/neovim-ayu",
  name = "ayu",
  opts = function()
    return {
      mirage = true
    }
  end,
  config = function(_, opts)
    require("ayu").setup(opts)
    vim.cmd([[colorscheme ayu]])
  end
}
