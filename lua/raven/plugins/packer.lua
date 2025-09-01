return require("packer").startup(function(use)
    use ("wbthomason/packer.nvim")

    -- UI
    use ("folke/tokyonight.nvim")
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
    use ("nvim-lua/plenary.nvim")
    use {
        "nvim-telescope/telescope.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("raven.plugins.telescope")
        end
    }
    use {
        "theprimeagen/harpoon",
        config = function ()
            require("raven.plugins.harpoon")
        end
    }

    -- LSP
    use ("neovim/nvim-lspconfig")

    -- Completion
    use ("hrsh7th/nvim-cmp")
    use ("hrsh7th/cmp-nvim-lsp")

    -- Snippets 
    use ("saadparwaiz1/cmp_luasnip")
    use ("hrsh7th/cmp-buffer")
    use ("hrsh7th/cmp-path")

    -- Autopairs
    use ("windwp/nvim-autopairs")

    use {
        "L3MON4D3/LuaSnip",
        requires = { "rafamadriz/friendly-snippets" },
        run = "make install_jsregexp"
    }

    use {
        "tpope/vim-fugitive",
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    }

    use {
        "nvim-tree/nvim-tree.lua",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-tree").setup {}
            vim.keymap.set("n", "<leader>.", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle file tree" })
        end
    }

end)

