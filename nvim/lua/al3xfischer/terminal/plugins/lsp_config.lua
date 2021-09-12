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
lsp.svelte.setup{
    cmd = {"svelteserver.cmd", "--stdio" },
	settings = {
		
	}
    --filetypes = {"svelte"},
--    root_dir = root_pattern("package.json", ".git"),
}
lsp.vuels.setup{}

lsp.zeta_note.setup{
  --cmd = {'C:/Users/Alex/language_servers/zeta-note/zeta-note-windows.exe'}
}
