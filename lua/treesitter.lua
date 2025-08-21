require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "python", "json", "bash" },
  highlight = { enable = true },
}
