return {
  "nvim-lua/plenary.nvim",
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "mbbill/undotree",
    lazy = false,
    cmd = "UndotreeToggle",
    keys = {
      { "<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "Undotree Toggle" },
    },
  },
  {
    "ThePrimeagen/harpoon",
    dependencies = "nvim-lua/plenary.nvim",
    init = function ()
     require('core.utils').map("harpoon")
    end,
    opts = function() require("plugins.configs.harpoon") end,
    config = function(_, opts) require("harpoon").setup(opts) end,
  }
}
