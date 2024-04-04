return {
    {
        'nvim-telescope/telescope.nvim', 
        version = "0.1.3", 
        dependencies = 'nvim-lua/plenary.nvim'
    },

    {
        "catppuccin/nvim", 
        name = "catppuccin",
        config = function()
            vim.cmd('colorscheme catppuccin-mocha')
        end,
    },

    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    'nvim-treesitter/playground',
    'tpope/vim-fugitive',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
    },

    {'stevearc/dressing.nvim'},

}

