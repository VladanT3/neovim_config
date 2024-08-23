return {
	"mbbill/undotree",
	vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, { desc = "Toggle [U]ndo [T]ree" }),
}
