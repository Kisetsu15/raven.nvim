vim.cmd [[packadd packer.nvim]]

require("raven.plugins.packer")
require("raven.plugins.ui")
require("raven.plugins.treesitter")
require("raven.plugins.lsp")

require("raven.core.keymaps")
require("raven.core.background")
require("raven.core.options")

require("raven.configs.cmp_config")

require("after.plugin.cmp")
require("after.plugin.autopairs")

