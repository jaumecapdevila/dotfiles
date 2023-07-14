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
  }
}
