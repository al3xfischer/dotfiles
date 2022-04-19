-- -------
-- cmp
-- -------

local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({
snippet = {
  expand = function(args)
    vim.fn["vsnip#anonymous"](args.body)
  end,
},
mapping = {
  ['<Tab>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })
},
sources = {
  { name = 'nvim_lsp' },
  { name = 'buffer' },
  { name = 'path' },
  { name = 'calc' },
  { name = 'nvim_lua' },
  { name = 'vsnip' },
  { name = 'treesitter' },
  { name = 'omni' },
},
formatting = {
	format = lspkind.cmp_format({
		-- with_text = false,
		maxwidth= 50,
	}),s
},
})

-- trouble
require 'trouble'.setup{}

-- hop
require 'hop'.setup{}

require 'nvim-treesitter.configs'.setup{
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
	}
}

--github-theme
require 'github-theme'.setup({
})

--lualine
require 'lualine'.setup{
	options = {
		theme = 'nightfly',
	}
}

-- rust
local opts = {
     tools = {
         autoSetHints = true,
         hover_with_actions = true,
         runnables = {
             use_telescope = true
         },
         inlay_hints = {
             only_current_line = false,
             show_parameter_hints = true,
             highlight = "Comment",
         },
     }
}

-- requirruste('rust-tools').setup(opts)
--
local saga = require'lspsaga'
saga.init_lsp_saga {
	border_style = "double",
	code_action_keys = {
		quit = '<C-c>',
	},
	code_action_prompt = {
		enable = false,
		sign = false,
		sign_priority= 10,
		Virtual_text  =false,
	}
}

-- nvim-comment
require('nvim_comment').setup({create_mappings = false})

-- treesitter
require 'nvim-treesitter.install'.compilers = { "clang" }

-- bufferline
require('bufferline').setup{
	options = {
		modified_icon = '●',
		numbers = 'ordinal',
		color_icons = true,
		separator_style = 'slant',
		diagnostics = 'nvim_lsp',
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left"
			}
		}
	}
}

-- nvim-tree
require('nvim-tree').setup{}
