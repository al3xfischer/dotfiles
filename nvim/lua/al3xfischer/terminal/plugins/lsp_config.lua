local lsp = require('lspconfig')

vim.lsp.set_log_level('ERROR')

lsp.gopls.setup{}
lsp.pyright.setup{}
lsp.tsserver.setup{}
lsp.html.setup{}
lsp.svelte.setup{}
lsp.vuels.setup{}
lsp.rust_analyzer.setup{}
lsp.texlab.setup{}
