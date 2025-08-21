-- Load plugin manager
vim.cmd [[packadd packer.nvim]]

-- Load configs
require("packer")
require("ui")
require("treesitter")
require("lsp")
require("keymaps")
require("telescope")
require("completion")
require("background")
require("options")
