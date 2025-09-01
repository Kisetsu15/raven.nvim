require("nvim-tree").setup {}

vim.keymap.set("n", "<leader>.", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file tree" })
