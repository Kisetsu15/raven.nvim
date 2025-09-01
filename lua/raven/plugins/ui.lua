-- Colorscheme
vim.cmd [[colorscheme tokyonight]]

-- Lualine
require("lualine").setup {
  options = {
    theme = "tokyonight"
  }
}
