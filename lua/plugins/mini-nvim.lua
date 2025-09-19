return {
	-- Collection of various small independent plugins/modules
	"nvim-mini/mini.nvim",
	config = function()
		require("mini.pairs").setup()
		-- require("mini.animate").setup(),
		require("mini.cursorword").setup({
			delay = 500,
		})
		require("mini.icons").setup()
		-- require("mini.indentscope").setup()
		require("mini.starter").setup()
		require("mini.files").setup({
			mappings = {
				go_in = "<Right>",
				go_out = "<Left>",
			},
		})
		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })

		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2L"
		end
	end,
}
