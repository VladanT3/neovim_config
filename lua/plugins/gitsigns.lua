return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
	},
}

-- Same as:
--{
--  'lewis6991/gitsigns.nvim',
--      config = function()
--          require('gitsigns').setup({
--              Your gitsigns configuration here
--          })
--      end,
--}
--
--opts are passed directly to the setup function
