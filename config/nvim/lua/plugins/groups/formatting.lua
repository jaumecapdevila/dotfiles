return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	opts = require("plugins.opts.conform"),
	config = function(_, opts)
		local conform = require("conform")

		conform.setup(opts)

		vim.keymap.set(
			{ "n", "v" },
			"<leader>rc",
			function()
				conform.format({
					lsp_fallback = true,
					timeout_ms = 1000,
				})
			end,
			{ desc = "Format file or selection" }
		)
	end,
}
