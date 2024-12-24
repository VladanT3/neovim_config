return {
	{ -- Autoformat
		"stevearc/conform.nvim",
		event = { "BufWritePre" }, --format on save
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "[F]ormat buffer",
			},
		},
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				-- Disable "format_on_save lsp_fallback" for languages that don't
				-- have a well standardized coding style. You can add additional
				-- languages here or re-enable it for the disabled ones.
				local disable_filetypes = { sql = true }
				return {
					timeout_ms = 500,
					lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
				}
			end,
			formatters_by_ft = {
				lua = { "stylua" },
				templ = { "templ" },
				c = { "indent" },
				-- Conform can also run multiple formatters sequentially
				-- python = { "isort", "black" },
				--
				-- You can use 'stop_after_first' to run the first available formatter from the list
				-- javascript = { "prettierd", "prettier", stop_after_first = true },
			},
			formatters = {
				indent = {
					args = {
						"-i4",
						"-ts4",
						"-br",
						"-brf",
						"-brs",
						"-cs",
						"-l1000",
						"-nbad",
						"-bap",
						"-nbbo",
						"-cdb",
						"-sc",
						"-ce",
						"-cdw",
						"-ss",
						"-npcs",
						"-nbc",
						"-sar",
						"-lp",
						"-ut",
						"-nbfda",
						"-nhnl",
						"-nprs",
						"-npsl",
						"-nsob",
						"-pal",
					},
				},
			},
		},
	},
}
