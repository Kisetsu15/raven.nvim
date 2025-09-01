-- Load plugin manager
vim.cmd [[packadd packer.nvim]]

vim.env.VIMRUNTIME = "C:\\Program Files\\Neovim\\share\\nvim\\runtime"

-- Load configs
require("plugins")      -- your plugin list
require("ui")           -- colorscheme, lualine
require("treesitter")   -- treesitter setup
require("lsp")          -- LSP configs
require("keymaps")      -- keybindings
require("telescope")    -- telescope config
require("completion")   -- nvim-cmp setup
require("background")   -- if you’re using image backgrounds
require("options")      -- vim options
require("cmp_config")   -- cmp extra config (optional)
require("after.plugin.autopairs")
require("after.plugin.harpoon")
