return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    cmd = { "ConformInfo" },
    opts = require("configs.conform"),
    config = function(_, opts)
        local conform = require("conform")

        conform.setup(opts)

        vim.keymap.set(
            { "n", "v" },
            "<leader>rc",
            function()
                conform.format({
                    async = true,
                })
            end,
            { desc = "Format file or selection" }
        )
    end,
}
