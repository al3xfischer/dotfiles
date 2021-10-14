local lsp = require('lspconfig')


local pid = vim.fn.getpid()
local omnisharp_bin = "C:/Users/Alex/language_servers/omnisharp/OmniSharp.exe"
vim.lsp.set_log_level("debug")
lsp.omnisharp.setup{
        cmd = { omnisharp_bin , "--languageserver", "--hostPID", tostring(pid) },
}

 lsp.gopls.setup{
 }
lsp.pyright.setup{}
lsp.tsserver.setup{}
lsp.html.setup{}
lsp.svelte.setup{}
lsp.vuels.setup{}
lsp.rust_analyzer.setup{}
lsp.texlab.setup{}
