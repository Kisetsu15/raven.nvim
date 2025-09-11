vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { desc = "Save file (insert mode)" })

vim.keymap.set("n", "<leader>n", "<cmd>ene | startinsert<CR>")

vim.keymap.set("n", "<leader>r", function()
  local old_name = vim.fn.expand("%:p")
  local new_name = vim.fn.input("Rename to: ", old_name, "file")
  if new_name ~= "" and new_name ~= old_name then
    vim.cmd("saveas " .. new_name)
    vim.fn.delete(old_name)
    vim.cmd("bdelete " .. vim.fn.bufnr(old_name))
end
end, { desc = "Rename current file" })

vim.keymap.set("n", "<leader>d", function()
    local file_dir = vim.fn.expand("%:p:h")
    local file_name = vim.fn.input("Delete file: ", file_dir, "file")
    if file_name ~= "" then
        local ok = vim.fn.delete(file_name)
    if ok == 0 then
        print("Deleted: " .. file_name)
    else
        print("Failed to delete: " .. file_name)
    end
  end
end, { desc = "Delete file by name" })

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
