local Plug = vim.fn["plug#"]
vim.call("plug#begin", "~/.config/nvim/plugged")

Plug("nvim-treesitter/nvim-treesitter") -- Treesitter
Plug("kyazdani42/nvim-tree.lua") -- To see a file tree with <F2>
Plug("kyazdani42/nvim-web-devicons") -- Icons
Plug("lukas-reineke/indent-blankline.nvim") -- Indent blankline
Plug("phaazon/hop.nvim") -- Hop (easymotion in lua)
Plug("akinsho/bufferline.nvim") -- Bufferline
Plug("numToStr/Comment.nvim") -- Commenter
Plug("norcalli/nvim-colorizer.lua") -- To see colors in real typing time


Plug("mhartington/formatter.nvim")

-- Telescope
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim")

-- Status bar
Plug("nvim-lualine/lualine.nvim")
Plug("SmiteshP/nvim-gps")

-- Awesome Themes
Plug("folke/tokyonight.nvim", { branch = "main" })

-- Autopairs - Autotags
Plug("windwp/nvim-autopairs")
Plug("windwp/nvim-ts-autotag")

-- NEOVIM LSP SUPPORT 🌟
Plug("neovim/nvim-lspconfig") -- Built-in lspkind_icons.local
Plug("williamboman/nvim-lsp-installer") -- Handler to install different language servers in a easy way
Plug("onsails/lspkind-nvim") -- Icons for neovim built-in lsp (like vscode)
Plug("ray-x/lsp_signature.nvim") -- Show function signature when typing

-- Cmp (Autocomplete)
Plug("hrsh7th/nvim-cmp") -- The core engine for nvim-comp
Plug("hrsh7th/cmp-buffer") -- Complete word from current buffer
Plug("hrsh7th/cmp-path") -- Complete files
Plug("hrsh7th/cmp-nvim-lsp") -- Easy auto-import and complete with lsp support
Plug("hrsh7th/cmp-nvim-lua") -- Completion for lua with neovim knowledge
Plug("hrsh7th/cmp-cmdline") -- Completion in command-line

-- Snippets
Plug("L3MON4D3/LuaSnip")
Plug("saadparwaiz1/cmp_luasnip")

vim.call("plug#end")
