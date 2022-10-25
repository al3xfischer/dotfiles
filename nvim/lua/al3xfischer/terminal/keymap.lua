
local map = vim.api.nvim_set_keymap

map('n','<M-p>',":lua require'telescope'.extensions.project.project{}<CR>",	{noremap = true, silent = true})
map('n','<leader>gr','<cmd>Lspsaga rename<CR>', {silent = true})
map('n','<leader>ga','<cmd>Lspsaga code_action<CR>', {silent = true})
map('n','<leader>gd','<cmd>Lspsaga preview_definition<CR>',{})
map('n','gc','<cmd>CommentToggle<CR>',{silent = true})
map('n',"==",'<cmd>CommentToggle<CR>',{silent = true})
map('v','gc',":'<,'>CommentToggle<CR>",{silent = true})
map('v',"==",":'<,'>CommentToggle<CR>",{silent = true})
map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>',{})
map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>',{})
map('n','gr','<cmd>Lspsaga lsp_finder<CR>',{})
map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>',{})
map('n','gh','<cmd>lua vim.lsp.buf.hover()<CR>',{})
map('n','<C-k>','<cmd>lua vim.lsp.buf.signature_help()<CR>',{})
map('n','<leader>lf','<cmd>lua vim.lsp.buf.formatting()<CR>',{})
map('n','<leader>le','<cmd>TroubleToggle<cr>',{})
map('n','<leader>vrc',":lua require('al3xfischer.terminal.plugins.telescope').search_dotfiles()<CR>",{noremap = true, silent = true})
map('n','<leader>of',"<cmd>Telescope file_browser path=%:p:h<CR>",{noremap = true, silent = true})
map('n','<leader>ot',"<cmd>Telescope find_files<CR>",{noremap = true, silent = true})
map('n','<leader>og',"<cmd>Telescope live_grep<CR>",{noremap = true, silent = true})
map('n','ff',"<cmd>Telescope buffers<CR>",{noremap = true, silent = true})
map('t','<Esc>',"<C-\\><C-n>",{noremap = true, silent = true})
map('n','<leader>n',":tabnew<CR>",{silent = true})
map('n','<leader>hw',":HopWord<CR>",{})
map('n','<leader>hl',":HopLine<CR>",{})
map('n','<leader>hc',":HopChar1<CR>",{})
map('n','<leader>t',":lua require'FTerm'.toggle()<CR>",{})
map('t','<leader>t',":lua require'FTerm'.toggle()<CR>",{})
map('n','<C-l>',"<C-w>l",{})
map('n','<C-h>',"<C-w>h",{})
map("n","<C-J>","i<CR><Esc>",{})
map('n','<Tab>',':BufferLineCycleNext<CR>',{})
map('n','<S-Tab>',':BufferLineCyclePrev<CR>',{})
map('n','<C-n>',':NvimTreeToggle<CR>',{})
map('n','du',"<cmd>DBUIToggle<CR>",{})
map('n','df',"<cmd>DBUIFindBuffer<CR>",{})
map('n','dr',"<cmd>DBUIRenameBuffer<CR>",{})
map('n','dq',"<cmd>DBUILastQueryInfo<CR>",{})
-- map('n','<C-n>','<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',{})
