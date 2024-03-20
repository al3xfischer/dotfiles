
vim.g.vimspector_enable_mappings ='VISUAL_STUDIO'
vim.g.python3_host_prog = 'C:/Users/Alex/AppData/Local/Programs/Python/Python39/python'
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.scrolloff=1
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.o.incsearch = true
vim.o.hidden = true
vim.o.mouse = 'a'
vim.wo.wrap = false

vim.o.completeopt = "menuone,noselect"
vim.o.omnifunc = 'v:lua.vim.lsp.omnifunc'
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.hlsearch = true
vim.o.showcmd = true
vim.o.scrolloff = 10
vim.o.ignorecase = true
vim.o.smarttab = true
vim.breakindent = true
vim.o.wrap = false
vim.o.backspace = [[indent,eol,start]]
vim.opt.path:append '**'

vim.api.nvim_set_hl(0, "Normal", { ctermfg=None,  ctermbg=None })

vim.lsp.handlers["textDocument/references"] = require("telescope.builtin").lsp_references
