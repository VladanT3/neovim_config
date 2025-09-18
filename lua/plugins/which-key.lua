return {
	"folke/which-key.nvim",
	-- Events can be normal autocommands events (`:help autocmd-events`).
	event = "VimEnter",
	opts = {
		preset = "helix",
		delay = 300,
		icons = {
			mappings = true,
			keys = {},
		},
		-- Document existing key chains
		spec = {
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>c", group = "[C]ode" },
		},
	},
}
