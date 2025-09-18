return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add file to Harpoon" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Harpoon menu" })

		vim.keymap.set("n", "<A-v>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<A-b>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<A-n>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<A-m>", function()
			harpoon:list():select(4)
		end)
	end,
}
