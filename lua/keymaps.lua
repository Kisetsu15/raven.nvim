vim.g.mapleader = " "

-- File Tree (netrw)
vim.keymap.set("n","<leader>.", vim.cmd.Ex, { desc = "Open file explorer" })

-- Save file
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { desc = "Save file (insert mode)" })

-- Quit
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit" })

-- Run current C file with clang
vim.keymap.set("n", "<F9>", function()
  vim.cmd("!clang % -o %:r && ./%:r")
end, { desc = "Compile & run C file" })

-- Run Python file
vim.keymap.set("n", "<F10>", ":!python %<CR>", { desc = "Run Python file" })

-- Undo with Ctrl+Z
vim.keymap.set("n", "<C-z>", "u", { noremap = true, desc = "Undo" })
vim.keymap.set("i", "<C-z>", "<C-o>u", { noremap = true, desc = "Undo" })

-- Redo with Ctrl+Y (common in editors)
vim.keymap.set("n", "<C-y>", "<C-r>", { noremap = true, desc = "Redo" })
vim.keymap.set("i", "<C-y>", "<C-o><C-r>", { noremap = true, desc = "Redo" })

-- CUT (Ctrl+X) - deletes selection into system clipboard
vim.keymap.set("v", "<C-x>", '"+d', { noremap = true, desc = "Cut" })

-- COPY (Ctrl+C) - copies selection into system clipboard
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, desc = "Copy" })

-- PASTE (Ctrl+V) in normal mode
vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, desc = "Paste" })

-- PASTE (Ctrl+V) in insert mode
vim.keymap.set("i", "<C-v>", '<Esc>"+pa', { noremap = true, desc = "Paste" })

-- PASTE (Ctrl+V) in visual mode (replace selection)
vim.keymap.set("v", "<C-v>", '"+p', { noremap = true, desc = "Paste" })

-- Ctrl+A: Select all
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, desc = "Select all" })
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { noremap = true, desc = "Select all" })

-- Rename variable (LSP powered)
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { desc = "Rename variable" })
