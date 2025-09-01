vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { desc = "Save file (insert mode)" })

vim.keymap.set("n", "<F9>", function()
    vim.cmd("!gcc % -o %:r && ./%:r")
end, { desc = "Compile & run C file" })

vim.keymap.set("n", "<F10>", ":!python %<CR>", { desc = "Run Python file" })

vim.keymap.set("n", "<C-z>", "u", { noremap = true, desc = "Undo" })
vim.keymap.set("i", "<C-z>", "<C-o>u", { noremap = true, desc = "Undo" })

vim.keymap.set("n", "<C-y>", "<C-r>", { noremap = true, desc = "Redo" })
vim.keymap.set("i", "<C-y>", "<C-o><C-r>", { noremap = true, desc = "Redo" })

vim.keymap.set("v", "<C-x>", '"+d', { noremap = true, desc = "Cut" })

vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, desc = "Copy" })

vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, desc = "Paste" })

vim.keymap.set("i", "<C-v>", '<Esc>"+pa', { noremap = true, desc = "Paste" })

vim.keymap.set("v", "<C-v>", '"+p', { noremap = true, desc = "Paste" })

vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, desc = "Select all" })
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { noremap = true, desc = "Select all" })

vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { noremap = true, silent = true })

vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { desc = "Rename variable" })
