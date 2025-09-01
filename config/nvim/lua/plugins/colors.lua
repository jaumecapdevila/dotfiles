return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = require("configs.rose-pine"),
    lazy = false,
    priority = 1000,
    cond = vim.g.mood == "Rose Pine" or vim.g.mood == "Rose Pine Moon",
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = false,
    opts = require("configs.neosolarized"),
    cond = vim.g.mood == "Solarized Dark",
    config = function(_, opts)
      require("NeoSolarized").setup(opts)
      vim.cmd("colorscheme NeoSolarized")
    end,
  },
  {
    "kepano/flexoki-neovim",
    name = "flexoki",
    lazy = false,
    priority = 1000,
    cond = vim.g.mood == "Flexoki",
    config = function()
      vim.api.nvim_set_hl(
        0,
        "NotifyBackground",
        { fg = "#CECDC3", bg = "#100F0F" }
      )
      vim.api.nvim_set_hl(
        0,
        "TelescopeBorder",
        { fg = "#4385be", bg = "#282726" }
      )
      vim.api.nvim_set_hl(0, "TelescopeNormal", { link = "NormalFloat" })
      vim.cmd("colorscheme flexoki")
    end,
  },
}
