require("lazy").setup({
     'neovim/nvim-lspconfig',
     { 'phaazon/hop.nvim', as = 'hop', },
     'tpope/vim-surround',
     { 'nvim-lua/popup.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
     { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
     'nvim-telescope/telescope-project.nvim',
     'nvim-telescope/telescope-fzy-native.nvim',
     'morhetz/gruvbox',
     {
       "hrsh7th/nvim-cmp",
       requires = {
         "hrsh7th/vim-vsnip",
         "hrsh7th/cmp-buffer",
       }
     },
     'hrsh7th/cmp-calc',
     'hrsh7th/cmp-nvim-lsp',
     'hrsh7th/cmp-path',
     'hrsh7th/cmp-nvim-lua',
     'ray-x/cmp-treesitter',
     'caenrique/nvim-toggle-terminal',
     'kyazdani42/nvim-web-devicons',
 	-- {
 	-- 	'kyazdani42/nvim-tree.lua',
 	-- 	requires = {
 	-- 	  'kyazdani42/nvim-web-devicons', -- optional, for file icon
 	-- 	},
 	-- }

     -- { 
     --       'folke/trouble.nvim',
     --       config = function ()
     --         require'trouble'.setup{}
     --       end
     --     },
     'folke/lsp-colors.nvim',
     'tpope/vim-dadbod',
     'kristijanhusak/vim-dadbod-ui',
     'hoob3rt/lualine.nvim',
     'ryanoasis/vim-devicons',
     { 'nvim-treesitter/nvim-treesitter' },
     'simrat39/rust-tools.nvim',
 	'hrsh7th/vim-vsnip',
 	'hrsh7th/cmp-vsnip',
 	'rust-lang/rust.vim',
 	'terrortylor/nvim-comment',
	'ray-x/guihua.lua',
	'olivercederborg/poimandres.nvim',
 	'nvim-telescope/telescope-file-browser.nvim',
 	'onsails/lspkind-nvim',
 	'onsails/diaglist.nvim',
 	'hrsh7th/cmp-omni',
 	{'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'},
 	'windwp/nvim-autopairs',
 	'ThePrimeagen/harpoon',
 	{'tzachar/cmp-tabnine', run='./install.ps1', requires = 'hrsh7th/nvim-cmp' },
 	'ray-x/go.nvim',
	{ 'epwalsh/obsidian.nvim', lazy=true,   dependencies = { "nvim-lua/plenary.nvim", },},
	{
	  "folke/noice.nvim",
	  event = "VeryLazy",
	  opts = {
		-- add any options here
	  },
	  dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
		}
	}
})

require 'al3xfischer.terminal.plugins.config'
require 'al3xfischer.terminal.plugins.lsp_config'
require 'al3xfischer.terminal.plugins.telescope'
