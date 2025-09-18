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
		require("mini.statusline").setup()
		require("mini.starter").setup()
		require("mini.files").setup({
			mappings = {
				go_in = "<Right>",
				go_out = "<Left>",
			},
		})
	end,
}
