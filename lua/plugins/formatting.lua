return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				xml = { "xmlformatter" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 10000,
			},
			notify_on_error = true,
			formatters = {
				isort = {
					include_trailing_comma = true,
					command = "isort",
					args = {
						"-",
					},
				},
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 10000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
