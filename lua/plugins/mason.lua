return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "gopls",
      "clangd",
      "python-lsp-server",
      "ruff",
    },
  },
}
