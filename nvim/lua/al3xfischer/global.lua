
vim.g.mapleader = ' '
vim.opt.clipboard = 'unnamedplus'

local map = vim.api.nvim_set_keymap

map('n','<leader>s',':w<CR>',{})
map('n','<leader>d','"_d',{})
map('x','<leader>d','"_d',{})
map('x','<leader>p','"_dP',{})
map('n','qq',':bd!<CR>',{silent = true})
map('n','<leader>gt',':tabnew \\Users\\Alex\\todo.md<CR>',{})
map('n','<leader>a','ggVG',{})
map('n','<leader>n',':enew',{})
map('i','jj','<C-c>',{})
map('n','<Tab>',':tabnext<CR>',{})
map('n','<S-Tab>','tabprev<CR>',{})
map('n','<leader>ö',':<C-u>call append(line("."),   repeat([""], v:count1))<CR>',{})
map('n','<leader>Ö',':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>',{})

vim.g.mouse = 'a'
