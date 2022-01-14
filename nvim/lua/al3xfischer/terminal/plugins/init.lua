
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

local packer = require('packer')


packer.startup(function() 

    use 'wbthomason/packer.nvim'

    use 'neovim/nvim-lspconfig' 

    use {
      'phaazon/hop.nvim',
      as = 'hop',
    }

    use 'tpope/vim-surround'
    
    use {
        'nvim-lua/popup.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'nvim-telescope/telescope-project.nvim'

    use 'nvim-telescope/telescope-fzy-native.nvim'

    use 'morhetz/gruvbox'

    use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-buffer",
      }
    }

    use 'hrsh7th/cmp-calc'

    use 'hrsh7th/cmp-nvim-lsp'

    use 'hrsh7th/cmp-path'

    use 'hrsh7th/cmp-nvim-lua'

    use 'caenrique/nvim-toggle-terminal'

    use 'puremourning/vimspector'

    use 'kyazdani42/nvim-web-devicons'

    use { 
          'folke/trouble.nvim',
          config = function ()
            require'trouble'.setup{}
          end
        }

    use 'folke/lsp-colors.nvim'

    use 'al3xfischer/lspsaga.nvim'

    use 'hoob3rt/lualine.nvim'

    use 'ryanoasis/vim-devicons'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use 'simrat39/rust-tools.nvim'

	use 'hrsh7th/vim-vsnip'

	use 'hrsh7th/cmp-vsnip'

	use 'rust-lang/rust.vim'

	use 'terrortylor/nvim-comment'

	use 'projekt0n/github-nvim-theme'

	use 'nvim-telescope/telescope-file-browser.nvim'

    require 'al3xfischer.terminal.plugins.config'
    require 'al3xfischer.terminal.plugins.lsp_config'
    require 'al3xfischer.terminal.plugins.telescope'

end)



