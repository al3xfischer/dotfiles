
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

vim.o.completeopt = "menuone,noselect"
vim.o.omnifunc = 'v:lua.vim.lsp.omnifunc'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_exec(
[[
augroup ReplaceNetrw
    autocmd VimEnter * silent! autocmd! FileExplorer
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | call luaeval("require('telescope.builtin').find_files({cwd = _A})", argv()[0]) | endif
augroup END
]],
false)
