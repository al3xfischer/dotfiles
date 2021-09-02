
local map = vim.api.nvim_set_keymap

map('n','<M-p>',":lua require'telescope'.extensions.project.project{}<CR>",	{noremap = true, silent = true})
map('n','<leader>gr','<cmd>Lspsaga rename<CR>', {silent = true})
map('n','<leader>ga','<cmd>Lspsaga code_action<CR>', {silent = true})
map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>',{})
map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>',{})
map('n','gr','<cmd>Lspsaga lsp_finder<CR>',{})
map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>',{})
map('n','gh','<cmd>lua vim.lsp.buf.hover()<CR>',{})
map('n','<C-k>','<cmd>lua vim.lsp.buf.signature_help()<CR>',{})
map('n','<C-n>','<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',{})

map('n','<leader>vrc',":lua require('al3xfischer.terminal.telescope').search_dotfiles()<CR>",{noremap = true, silent = true})
map('n','<leader>lvrc',":so $MYVIMRC<CR>",{noremap = true, silent = true})

map('n','<leader>ff',"<cmd>Telescope file_browser<CR>",{noremap = true, silent = true})
map('n','<leader>t',"<cmd>Telescope find_files<CR>",{noremap = true, silent = true})
map('n','<leader>fg',"<cmd>Telescope live_grep<CR>",{noremap = true, silent = true})
map('n','<leader>q',"<cmd>Telescope open_qflist<CR>",{noremap = true, silent = true})
map('n','ff',"<cmd>Telescope buffers<CR>",{noremap = true, silent = true})

map('t','<Esc>',"<C-\\><C-n>",{noremap = true, silent = true})
map('n','<leader>n',":tabnew<CR>",{silent = true})

map('n','<C-z>',":ToggleTerminal<CR>",{})
map('t','<C-z>',"<C-\\><C-n>:TogglerTerminal<CR>",{})

map('n','<leader>dl',":call vimspector#Launch()<CR>",{})
map('n','<leader>dr',"<cmd>VimspectorReset<CR>",{})

map('n','<leader>hw',":HopWord<CR>",{})
map('n','<leader>hl',":HopLine<CR>",{})
