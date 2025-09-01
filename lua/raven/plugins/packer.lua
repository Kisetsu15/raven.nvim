return require("packer").startup(function(use)
    use ("wbthomason/packer.nvim")

    use ("folke/tokyonight.nvim")
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true }
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

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

    use ("neovim/nvim-lspconfig")

    use ("hrsh7th/nvim-cmp")
    use ("hrsh7th/cmp-nvim-lsp")

    use ("saadparwaiz1/cmp_luasnip")
    use ("hrsh7th/cmp-buffer")
    use ("hrsh7th/cmp-path")


    use ("windwp/nvim-autopairs")

    use {
        "L3MON4D3/LuaSnip",
        requires = { "rafamadriz/friendly-snippets" },
        run = "make install_jsregexp"
    }

    use {
        "tpope/vim-fugitive",
        config = function ()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        end
    }

    use {
        "nvim-tree/nvim-tree.lua",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("raven.plugins.nvim-tree")
        end
    }

    use {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    }

    use {
        "goolord/alpha-nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("raven.plugins.alpha-nvim")
        end
    }

end)

