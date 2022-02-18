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

-- github-theme
require 'github-theme'.setup({
})

-- lualine
require 'lualine'.setup{
	options = {
		theme = 'github',
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

require('rust-tools').setup(opts)
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

require 'nvim-treesitter.install'.compilers = { "clang" }

--minimap
vim.g.minimap_auto_start = 1
vim.g.minimap_highlight_search = 1
vim.g.minimap_highlight_range = 1

-- diaglist
require("diaglist").init({})
