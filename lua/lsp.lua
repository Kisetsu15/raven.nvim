local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- C / C++
lspconfig.clangd.setup {
  capabilities = capabilities,
  cmd = { "clangd" },
}

-- Python
lspconfig.pyright.setup { capabilities = capabilities }

-- JSON
lspconfig.jsonls.setup { capabilities = capabilities }

-- Bash
lspconfig.bashls.setup { capabilities = capabilities }


-- Lua
lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- Neovim uses LuaJIT
      },
      diagnostics = {
        globals = { "vim" }, -- recognize `vim` as a global
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false, -- stop asking for "third party" libraries
      },
      telemetry = { enable = false },
    },
  },
}
