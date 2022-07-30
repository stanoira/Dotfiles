local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print("could not load packer")
	return
end

-- install plugins here
packer.startup({
	function(use)
		-- packer autohandles itself
		use("wbthomason/packer.nvim")

		-- useful for other plugins
		use({ "nvim-lua/plenary.nvim", commit = "968a4b9afec0c633bc369662e78f8c5db0eba249" })

		-- Colorschemes
		use({
			"folke/tokyonight.nvim",
			config = function()
				vim.g.tokyonight_style = "night"
			end,
		})
		use({
			"rose-pine/neovim",
			as = "rose-pine",
			config = function()
				require("rose-pine").setup({ dark_variant = "moon" })
			end,
		})
		use({
			"catppuccin/nvim",
			config = function()
				vim.g.catppuccin_flavour = "mocha"
			end,
		})
		use({ "EdenEast/nightfox.nvim" })
		use({ "shaunsingh/nord.nvim" })
		use({ "olivercederborg/poimandres.nvim" })

		-- alpha-nvim
		use({ "kyazdani42/nvim-web-devicons", commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e" })
		use({ "goolord/alpha-nvim", commit = "ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94" })

		-- Comments
		use({ "numToStr/Comment.nvim", commit = "2c26a00f32b190390b664e56e32fd5347613b9e2" })
		use({ "JoosepAlviste/nvim-ts-context-commentstring", commit = "88343753dbe81c227a1c1fd2c8d764afb8d36269" })
		use("folke/todo-comments.nvim")

		-- Lualine statusline
		use({ "nvim-lualine/lualine.nvim", commit = "3362b28f917acc37538b1047f187ff1b5645ecdd" })

		-- Indent line
		use({ "lukas-reineke/indent-blankline.nvim", commit = "6177a59552e35dfb69e1493fd68194e673dc3ee2" })

		-- Autopairs
		use({ "windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" })

		-- Terminal
		use({ "akinsho/toggleterm.nvim", commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8" })

		-- cmp plugins
		use({ "hrsh7th/nvim-cmp", commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a" })
		use({ "hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323" })
		use({ "hrsh7th/cmp-path", commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e" })
		use({ "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" })
		use({ "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" })
		use({ "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" })

		-- Colorizer
		use({
			"norcalli/nvim-colorizer.lua",
			cmd = {
				"ColorizerAttachToBuffer",
				"ColorizerDetachFromBuffer",
				"ColorizerReloadAllBuffers",
			},
		})

		-- snippets
		use({ "L3MON4D3/LuaSnip", commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a" })
		use({ "rafamadriz/friendly-snippets", commit = "d27a83a363e61009278b6598703a763ce9c8e617" })

		-- Telescope
		use({
			"nvim-telescope/telescope-fzf-native.nvim",
			run = "make",
		})
		use({ "nvim-telescope/telescope.nvim", commit = "d96eaa914aab6cfc4adccb34af421bdd496468b0" })

		-- Harpoon the primeagen is happy
		use("ThePrimeagen/harpoon")

		-- LSP
		use({ "neovim/nvim-lspconfig" })
		use({ "williamboman/nvim-lsp-installer" })
		use({ "jose-elias-alvarez/null-ls.nvim" })
		-- use({ "simrat39/rust-tools.nvim", module = "rust-tools" }

		-- Treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			config = function()
				require("stanoira.treesitter")
			end,
			run = ":TSUpdate",
		})

		-- Twilight
		use({
			"folke/twilight.nvim",
			cmd = { "Twilight" },
		})

		--Tree
		use({
			"kyazdani42/nvim-tree.lua",
			config = function()
				require("stanoira.nvim-tree")
			end,
			requires = {
				"kyazdani42/nvim-web-devicons", -- optional, for file icon
			},
			tag = "nightly", -- optional, updated every week. (see issue #1193)
		})

		-- Automatically set up your configuration after cloning packer.nvim
		-- Put this at the end after all plugins
		if PACKER_BOOTSTRAP then
			require("packer").sync()
		end
	end,
	config = {
		-- Move to lua dir so impatient.nvim can cache it
		compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua",
	},
})

require("packer_compiled")
