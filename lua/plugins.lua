return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- UI
  use "folke/tokyonight.nvim"
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }


  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- Telescope
  use "nvim-lua/plenary.nvim"
  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  }
  use ("theprimeagen/harpoon") 

  -- LSP
  use "neovim/nvim-lspconfig"

  -- Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"

  -- Snippets 
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"

  -- Autopairs
  use "windwp/nvim-autopairs"

  use {
    "L3MON4D3/LuaSnip",
    requires = { "rafamadriz/friendly-snippets" },
    run = "make install_jsregexp"  -- <- installs jsregexp
  }
end)

