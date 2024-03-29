
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

local packer = require('packer')

packer.startup(function() 
	use 'wbthomason/packer.nvim'

	-- use {
	-- 	'easymotion/vim-easymotion'
	-- }

	use 'tpope/vim-surround'

	use 'phaazon/hop.nvim'
end)

--require 'hop'.setup{}
local map = vim.api.nvim_set_keymap

require('hop').setup()


--- oracle sql developer
map("n","<leader>os",":call VSCodeNotify('sqldeveloper.view.compile')<CR>",{noremap = true, silent = true})
map("n","<leader>sd",":call VSCodeNotify('sqldeveloper.connections.focus')<CR>",{noremap = true, silent = true})
map("n","<leader>or",":call VSCodeNotify('sqldeveloper.worksheet.runStatement')<CR>",{noremap = true, silent = true})
map("n","<leader>ss",":call VSCodeNotify('sqldeveloper.worksheet.queryResult.focus')<CR>",{noremap = true, silent = true})
map("n","<leader>sc",":call VSCodeNotify('sqldeveloper.worksheet.compileObject')<CR>",{noremap = true, silent = true})

map("n","<leader>sb",":call VSCodeNotify('workbench.action.togglePanel')<CR>",{noremap = true, silent = true})
map("n","<leader>sp",":call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>",{noremap = true, silent = true})

map("n","j","gj",{noremap = true})
map("n","k","gk",{noremap = true})
map("n","<C-J>","i<CR><Esc>",{})
map("n","<C-j>",":call VSCodeNotify('workbench.action.navigateDown')<CR>", {noremap = true, silent = true})
map("x","<C-j>",":call VSCodeNotify('workbench.action.navigateDown')<CR>",{noremap = true, silent = true})
map("n","<C-k>",":call VSCodeNotify('workbench.action.navigateUp')<CR>",{noremap = true, silent = true})
map("x","<C-k>",":call VSCodeNotify('workbench.action.navigateUp')<CR>",{noremap = true, silent = true})
map("n","<C-h>",":call VSCodeNotify('workbench.action.navigateLeft')<CR>",{noremap = true, silent = true})
map("x","<C-h>",":call VSCodeNotify('workbench.action.navigateLeft')<CR>",{noremap = true, silent = true})
map("n","<C-l>",":call VSCodeNotify('workbench.action.navigateRight')<CR>",{noremap = true, silent = true})
map("x","<C-l>",":call VSCodeNotify('workbench.action.navigateRight')<CR>",{noremap = true, silent = true})
map("n","gr","<cmd>call VSCodeNotify('editor.action.goToReferences')<CR>",{noremap = true, silent = true})
map("n","<leader>gr",":call VSCodeNotify('editor.action.rename')<CR>",{noremap = true, silent = true})
map("n","qq",":q!<CR>",{})
map("n","<leader>s",":w<CR>",{})
map("n","<leader>st","<cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>",{noremap = true, silent = true})
map("n","==",":VSCodeCommentary<CR>",{noremap = true, silent = true})
map("x","==",":'<,'>VSCodeCommentary<CR>",{noremap = true, silent = true})
map("n","<leader>p","<cmd>call VSCodeNotify('workbench.action.showCommands')<CR>",{noremap = true, silent = true})
map("x","<leader>p","<cmd>call VSCodeNotify('workbench.action.showCommands')<CR>",{noremap = true, silent = true})
map("n","<leader>og","<cmd>call VSCodeNotify('workbench.action.showAllSymbols')<CR>",{})
map("n","<leader>or",":call VSCodeNotify('sqldeveloper.worksheet.runStatement')<CR>",{noremap = true, silent = true})
map("n","<leader>li",":call VSCodeNotify('editor.action.goToImplementation')<CR>",{noremap = true, silent = true})
map("n","<leader>ga",":call VSCodeNotify('keyboard-quickfix.openQuickFix')<CR>",{noremap = true, silent = true})
map("n","<leader>lf",":call VSCodeNotify('editor.action.formatDocument')<CR>",{noremap = true, silent = true})
map("n","<leader>sf",":call VSCodeNotify('workbench.view.explorer')<CR>",{noremap = true, silent = true})
map("n","<leader>t",":call VSCodeNotify('workbench.action.quickOpen')<CR>",{noremap = true, silent = true})
map("n","<leader>v",":call VSCodeNotify('markdown.showPreviewToSide')<CR>",{noremap = true, silent = true})
map("n","<leader>ll",":call VSCodeNotify('workbench.action.editor.changeLanguageMode')<CR>",{noremap = true, silent = true})
map("n","<leader>en",":call VSCodeNotify('editor.action.marker.next')<CR>",{noremap = true, silent = true})
map("n","<leader>le",":call VSCodeNotify('workbench.actions.view.problems')<CR>",{noremap = true, silent = true})
map("n","<leader>gr",":call VSCodeNotify('editor.action.goToReferences')<CR>",{noremap = true, silent = true})
map("n","<leader>lc",":call VSCodeNotify('editor.action.rename')<CR>",{noremap = true, silent = true})
map("n","<leader>ltc",":call VSCodeNotify('dotnet.test.runTestsInContext')<CR>",{noremap = true, silent = true})
map("n","<leader>ltd",":call VSCodeNotify('dotnet.test.debugTestsInContext')<CR>",{noremap = true, silent = true})
map("n","<leader>z",":call VSCodeNotify('workbench.action.toggleZenMode')<CR>",{noremap = true, silent = true})
map("n","<leader>n",":call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>",{noremap = true, silent = true})
map("n","<M-p>",":call VSCodeNotify('projectManager.listProjects')<CR>",{})
map('n','<leader>hw',":HopWord<CR>",{})
map('n','<leader>hl',":HopLine<CR>",{})
map('n','<leader>hc',":HopChar1<CR>",{})
map("n","<leader>ot",":call VSCodeNotify('workbench.action.quickOpen')<CR>",{noremap = true, silent = true})
map("n","z=","<Cmd>call VSCodeNotify('keyboard-quickfix.openQuickFix')<CR>",{noremap = true, silent = true})
map("n","za","<Cmd>call VSCodeNotify('editor.toggleFold')<CR>",{noremap = true, silent = true})
map("n","zR","<Cmd>call VSCodeNotify('editor.unfoldAll')<CR>",{noremap = true, silent = true})
map("n","zM","<Cmd>call VSCodeNotify('editor.foldAll')<CR>",{noremap = true, silent = true})
map("n","zo","<Cmd>call VSCodeNotify('editor.unfold')<CR>",{noremap = true, silent = true})
map("n","zO","<Cmd>call VSCodeNotify('editor.unfoldRecursively')<CR>",{noremap = true, silent = true})
map("n","zc","<Cmd>call VSCodeNotify('editor.fold')<CR>",{noremap = true, silent = true})
map("n","zC","<Cmd>call VSCodeNotify('editor.foldRecursively')<CR>",{noremap = true, silent = true})
map("n","z1","<Cmd>call VSCodeNotify('editor.foldLevel1')<CR>",{noremap = true, silent = true})
map("n","z2","<Cmd>call VSCodeNotify('editor.foldLevel2')<CR>",{noremap = true, silent = true})
map("n","z3","<Cmd>call VSCodeNotify('editor.foldLevel3')<CR>",{noremap = true, silent = true})
map("n","z4","<Cmd>call VSCodeNotify('editor.foldLevel4')<CR>",{noremap = true, silent = true})
map("n","z5","<Cmd>call VSCodeNotify('editor.foldLevel5')<CR>",{noremap = true, silent = true})
map("n","z6","<Cmd>call VSCodeNotify('editor.foldLevel6')<CR>",{noremap = true, silent = true})
map("n","z7","<Cmd>call VSCodeNotify('editor.foldLevel7')<CR>",{noremap = true, silent = true})
map("x","zV","<Cmd>call VSCodeNotify('editor.foldAllExcept')<CR>",{noremap = true, silent = true})
map("n","<M-j>","<Cmd>call VSCodeNotify('editor.action.moveLinesDownAction')<CR>",{noremap = true, silent = true})
map("n","<M-k>","<Cmd>call VSCodeNotify('editor.action.moveLinesUpAction')<CR>",{noremap = true, silent = true})
