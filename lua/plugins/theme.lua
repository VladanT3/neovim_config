return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	init = function()
		vim.opt.background = "dark" -- dark or light
		vim.g.gruvbox_material_background = "soft" -- soft, medium, hard
		vim.g.gruvbox_material_foreground = "material" -- material, mix, original
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
