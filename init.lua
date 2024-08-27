return require('packer').startup(function(use)
	-- packer required stuff
	use 'wbthomason/packer.nvim'

	-- bufferline shit
	use 'akinsho/bufferline.nvim'
	require("bufferline").setup{
		options = {
			always_show_bufferline = true,
			separator_style = "slant",
			color_icons = true,
		}

	}

	-- file tree shit
	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons' }
	}
	require('nvim-tree').setup()

	-- lsp lines
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	})

	-- indent-blanklike.nvim
	use "lukas-reineke/indent-blankline.nvim"
	require("ibl").setup()

	-- lush thing
	use 'rktjmp/lush.nvim'

	-- themes
	use 'morhetz/gruvbox' -- Gruvbox
	use 'catppuccin/nvim' -- Catpuccin
	use 'AlexvZyl/nordic.nvim' -- Nordic
	use 'craftzdog/solarized-osaka.nvim' -- solarized-osaka
	use 'folke/tokyonight.nvim' -- tokyo night
	use 'rose-pine/neovim' -- rose pine
	use 'EdenEast/nightfox.nvim' -- night fox
	use 'navarasu/onedark.nvim' -- One Dark
	use 'sainnhe/gruvbox-material' -- Gruvbox x Material
	use 'projekt0n/github-nvim-theme' -- Github Theme
	use 'sainnhe/everforest' -- Everforest
	use 'Mofiqul/vscode.nvim' -- VSCode Theme
	use 'marko-cerovac/material.nvim' -- Material
	use 'olimorris/onedarkpro.nvim' -- OneDarkPro
	use 'Mofiqul/dracula.nvim' -- Dracula
	use 'nyoom-engineering/oxocarbon.nvim' -- oxocarbon
	use 'scottmckendry/cyberdream.nvim' -- cyberdream
	use 'shaunsingh/nord.nvim' -- Nord
	use 'sainnhe/sonokai' -- Sonokai
	use 'ribru17/bamboo.nvim' -- Bamboo
	use 'sainnhe/edge' -- Edge
	use 'mcchrish/zenbones.nvim' -- ZenBones
	use 'bluz71/vim-moonfly-colors' -- Moonfly
	use 'tiagovla/tokyodark.nvim' -- Tokyo Dark

	-- themery
	use 'zaldih/themery.nvim'
	require("themery").setup({
		themes = {
		{ -- GRUVBOX DARK
			name        = "Gruvbox [DARK]",
			colorscheme = "gruvbox",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- NORDIC [DARK]
			name        = "Nordic [DARK]",
			colorscheme = "nordic",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Solarized Osaka [broken rn]
			name        = "Solarized Osaka [fucked tbh]",
			colorscheme = "solarized-osaka",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Tokyo Night
			name        = "Tokyo Night",
			colorscheme = "tokyonight",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Rose Pine
			name        = "Rose Pine",
			colorscheme = "rose-pine",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Night Fox
			name        = "Night Fox",
			colorscheme = "nightfox",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- One Dark
			name        = "One Dark",
			colorscheme = "onedark",
			before      = [[vim.opt.background = "dark"]]
		}, 
		{ -- Gruvbox x Material
			name        = "Gruvbox Material",
			colorscheme = "gruvbox-material",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Github Theme [Dark]
			name        = "Github Dark",
			colorscheme = "github_dark",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Github Theme [Light]
			name        = "Github Light",
			colorscheme = "github_light",
			before      = [[vim.opt.background = "light"]]
		},
		{ -- Everforest
			name        = "Everforest",
			colorscheme = "everforest",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- VSCode Theme [Dark]
			name        = "Dark+ [VSCODE]",
			colorscheme = "vscode",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- VSCode Theme [Light]
			name        = "Light+ [VSCODE]",
			colorscheme = "vscode",
			before      = [[vim.opt.background = "light"]]
		},
		{ -- Material [Dark]
			name        = "Material [Dark]",
			colorscheme = "material",
			before      = [[vim.opt.background = "dark"]]
		},
-- UNCOMMENT TO SWAP WITH NORMAL ONE DARK
--		{ -- One Dark Pro
--			name        = "One Dark Pro",
--			colorscheme = "onedarkpro",
--			before      = [[vim.opt.background = "dark"]]
--		},
		{ -- Dracula
			name        = "Dracula",
			colorscheme = "dracula",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- oxocarbon [dark]
			name        = "OxoCarbon [Dark]",
			colorscheme = "oxocarbon",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- oxocarbon [light]
			name        = "OxoCarbon [Light]",
			colorscheme = "oxocarbon",
			before      = [[vim.opt.background = "light"]]
		},
		{ -- Cyberdream [dark]
			name        = "Cyberdream [Dark]",
			colorscheme = "cyberdream",
			before      = [[vim.opt.background = "dark"]]
		},
--              BROKEN
--		{ -- Cyberdream [light]
--			name        = "Cyberdream [Light]",
--			colorscheme = "cyberdream",
--			before      = [[vim.opt.background = "light"]]
--		},
		{ -- Nord [dark]
			name        = "Nord [Dark]",
			colorscheme = "nord",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Nord [light]
			name        = "Nord [Light]",
			colorscheme = "nord",
			before      = [[vim.opt.background = "light"]]
		},
		{ -- Sonokai [dark]
			name        = "Sonokai [Dark]",
			colorscheme = "sonokai",
			before      = [[vim.opt.background = "dark"]]
		},
--              BROKEN
--		{ -- Sonokai [light]
--			name = "Sonokai [Light]",
--			colorscheme = "sonokai",
--			before = [[vim.opt.background = "light"]]
--		},
		{ -- Bamboo [dark]
			name        = "Bamboo [Dark]",
			colorscheme = "bamboo",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Bamboo [light]
			name        = "Bamboo [Light]",
			colorscheme = "bamboo",
			before      = [[vim.opt.background = "light"]]
		},
		{ -- Edge [dark]
			name        = "Edge [Dark]",
			colorscheme = "edge",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Edge [light]
			name        = "Edge [Light]",
			colorscheme = "edge",
			before      = [[vim.opt.background = "light"]]
		},
		{ -- Zenbones [dark]
			name        = "ZenBones [Dark]",
			colorscheme = "zenbones",
			before      = [[vim.opt.background = "dark"]]
		},
		{ -- Zenbones [light]
			name        = "ZenBones [Light]",
			colorscheme = "zenbones",
			before      = [[vim.opt.background = "light"]]
		},
		{ -- Moonfly [dark]
			name        = "Moonfly [Dark]",
			colorscheme = "moonfly",
			before      = [[vim.opt.background = "dark"]]
		},
--		Apparently doesn't exist
--		{ -- Moonfly [light]
--			name        = "Moonfly [Light]",
--			colorscheme = "moonfly",
--			before      = [[vim.opt.background = "light"]]
--		},
		{ -- Tokyo Dark
			name        = "Tokyo Dark",
			colorscheme = "tokyodark",
			before      = [[vim.opt.background = "dark"]]
		},
		
	--  ██████  █████  ████████ ██████  ██████  ██    ██  ██████  ██████ ██ ███    ██ 
	-- ██      ██   ██    ██    ██   ██ ██   ██ ██    ██ ██      ██      ██ ████   ██ 
	-- ██      ███████    ██    ██████  ██████  ██    ██ ██      ██      ██ ██ ██  ██ 
	-- ██      ██   ██    ██    ██      ██      ██    ██ ██      ██      ██ ██  ██ ██ 
	--  ██████ ██   ██    ██    ██      ██       ██████   ██████  ██████ ██ ██   ████  

		{ -- CATPPUCCIN LATTE
			name = "Catppuccin [LATTE]",
			colorscheme = "catppuccin-latte",
			before = [[vim.opt.background = "light"]]
		},
		{ -- CATPPUCCIN FRAPPE
			name = "Catppuccin [FRAPPE]",
			colorscheme = "catppuccin-frappe",
			before = [[vim.opt.background = "dark"]]
		},
		{ -- CATPPUCCIN MACCHIATO
			name = "Catppuccin [MACCHIATO]",
			colorscheme = "catppuccin-macchiato",
			before = [[vim.opt.background = "dark"]]
		},
		{ -- CATPPUCCIN MOCHA
			name = "Catppuccin [MOCHA]",
			colorscheme = "catppuccin-mocha",
			before = [[vim.opt.background = "dark"]]
		}
		}
	})

	-- syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	require'nvim-treesitter.configs'.setup {
		ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline"},
		auto_install = true,
		highlight = {
			enable = true
		}
	}


	-- AUTOCOMPLETE
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	local cmp = require'cmp'
	cmp.setup({
		snippet = {
			expand = function(args)
				vim.fn["vsnip#anonymous"](args.body)
			end,
	},
	window = {},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
	}, {
		{ name = 'buffer' },
	})
	})
	
	-- starting stuff on open
	vim.cmd([[autocmd VimEnter * NvimTreeToggle]])
	vim.wo.number = true
end)
