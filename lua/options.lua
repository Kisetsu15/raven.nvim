-- Show absolute line numbers
vim.opt.number = true

-- Show relative line numbers (useful for jumping with motions like 5j/5k)
vim.opt.relativenumber = true

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == "" then
      vim.cmd("Ex")  -- open netrw
    end
  end,
})
