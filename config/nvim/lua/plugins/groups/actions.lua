return {
  -- easily add, remove, change surroundings
  {
    "echasnovski/mini.surround",
    event = "VeryLazy",
    opts = function() return require("plugins.configs.others").surround end,
    config = function(_, opts) require("mini.surround").setup(opts) end,
  },

  -- Easily toggle comments
  {
    "numToStr/Comment.nvim",
    config = function() require("Comment").setup() end,
  },
}
