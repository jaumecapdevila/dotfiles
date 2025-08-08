return {
    -- Library used by other plugins
    { "nvim-lua/plenary.nvim", lazy = true },

    -- Profile nvim startup time
    {
        "dstein64/vim-startuptime",
        cmd = "StartupTime",
        config = function() vim.g.startuptime_tries = 10 end,
    },
}
