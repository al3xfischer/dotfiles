
-- theme
require('poimandres').setup {
      -- leave this setup function empty for default config
      -- or refer to the configuration section
      -- for configuration options
    }

vim.cmd('colorscheme poimandres')

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
  ['<Tab>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
  ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
  ['<C-n>'] = cmp.mapping.select_next_item(),
  ['<C-p>'] = cmp.mapping.select_prev_item(),
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
  { name = 'cmp_tabnine'},
},
formatting = {
	format = lspkind.cmp_format({
		-- with_text = false,
		maxwidth= 50,
	}),
},
})

-- trouble
require 'trouble'.setup{}

-- hop
require 'hop'.setup{}

require 'nvim-treesitter.configs'.setup{
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "rust", "javascript", "typescript", "css", "markdown", "python", "cpp", "sql", "json5", "yaml", "html" },
	highlight = {
		enable = true,
    	additional_vim_regex_highlighting = { "markdown" },
	},
	indent = {
	  enable = true,
	},
	incremental_selection = {
		enable = true,
	}
}

--github-theme
--require 'github-theme'.setup({})

--lualine
require 'lualine'.setup{
	options = {
		-- theme = 'nightfly',
		theme = 'poimandres'
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
				text_align = "center"
			}
		}
	}
}

-- autopairs
require('nvim-autopairs').setup{}

-- tabnine AI
local tabnine = require("cmp_tabnine.config")
tabnine:setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = "..",
})

-- Go.nvim
require('go').setup()


-- Obsidian.nvim
require("obsidian").setup({
  dir = "C:\\Users\\Alex\\Documents\\Obsidian~Vault",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  }
})

require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})


require("notify").setup({
  background_colour = "#000000",
})

