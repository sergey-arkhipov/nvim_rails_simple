-- plugins.lua
return {
	-- Alpha (Dashboard)
	{ 'goolord/alpha-nvim', lazy = true }, -- Auto Pairs
	{ 'windwp/nvim-autopairs' }, -- Bufferline
	{ 'akinsho/bufferline.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },

	-- Colorscheme
	{ 'folke/tokyonight.nvim' },
	-- A pretty list for showing diagnostics, references, telescope results, quickfix and location list
	{ 'folke/trouble.nvim' }, -- Asynchronous Lint Engine
	-- Hop (Better Navigation)
	{ 'phaazon/hop.nvim', lazy = true }, -- Lualine
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	}, -- Language Support
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{ 'williamboman/mason.nvim' }, -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-buffer' }, -- Optional
			{ 'hrsh7th/cmp-path' }, -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'hrsh7th/cmp-nvim-lua' }, -- Optional
			-- Snippets
			{ 'L3MON4D3/LuaSnip' }, -- Required
			{ 'rafamadriz/friendly-snippets' }, -- Optional
		},
	}, -- Nvimtree (File Explorer)
	{
		'nvim-tree/nvim-tree.lua',
		lazy = true,
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	}, -- Nvim-Surround (Manipulating Surroundings)
	{
		'kylechui/nvim-surround',
		config = function()
			require('nvim-surround').setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	}, -- Added these plugins to install Telescope
	{
		'nvim-telescope/telescope.nvim',
		lazy = true,
		dependencies = { { 'nvim-lua/plenary.nvim' } },
	}, -- Toggle Term
	{ 'akinsho/toggleterm.nvim', version = '*', config = true }, -- Treesitter
	{ 'nvim-treesitter/nvim-treesitter' }, -- Which-key
	{ 'folke/which-key.nvim', lazy = true }, -- Comment.nvim
	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
		},
		lazy = false,
	},
	{ 'wsdjeg/vim-fetch' },
	{ 'wesleimp/stylua.nvim' },
}
