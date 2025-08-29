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

-- Indentation
vim.opt.tabstop = 4        -- Number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 4     -- Number of spaces used for each step of (auto)indent
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.smartindent = true -- Smarter autoindenting
