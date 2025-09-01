-- Treesitter with GCC
require("nvim-treesitter.install").compilers = { "gcc" }
require("nvim-treesitter.install").prefer_git = true

require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "python", "json", "bash" },
  highlight = { enable = true },
}

