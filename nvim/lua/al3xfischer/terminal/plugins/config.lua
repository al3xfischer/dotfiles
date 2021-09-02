
-- -------
-- cmp
-- -------

local cmp = require'cmp'
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
  { name = 'orgmode' },
}
})

-- trouble
require 'trouble'.setup{}

-- hop
require 'hop'.setup{}

-- orgmode
require 'orgmode'.setup{
	org_agenda_files = { '~/org-mode/**/*' },
	org_default_notes_file = '~/org-mode/todo.org',
}
