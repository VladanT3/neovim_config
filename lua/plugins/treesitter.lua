return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "go",
      "python",
    },
    auto_install = true,
    highlight = {
      enable = true,
    },
  },
}
