
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_browser_split = 4
vim.g.netrw_liststyle = 1
vim.g.netrw_powerline_fonts = 1

vim.g.vimspector_enable_mappings ='VISUAL_STUDIO'
vim.wo.number = true

vim.opt.scrolloff=1
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.o.incsearch = true
vim.o.hidden = true

--vim.cmd('colorscheme gruvbox')

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

vim.o.completeopt = "menuone,noselect"
vim.o.omnifunc = 'v:lua.vim.lsp.omnifunc'

