local lsp = require('lspconfig')

vim.lsp.set_log_level('ERROR')

-- local function config(_config)
-- 	return vim.tbl_deep_extend("force", {
-- 		capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
-- 	}, _config or {})
-- end
local function config(_config)
	local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
	capabilities.textDocument.foldingRange = {
		dynamicRegistration = false,
		lineFoldingOnly = true
	}
	return vim.tbl_deep_extend("force", {
		capabilities = capabilities
	}, _config or {})
end

require("lspconfig").gopls.setup(config({
	cmd = { "gopls", "serve" },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}))
lsp.pyright.setup(config())
lsp.tsserver.setup(config())
lsp.html.setup(config())
lsp.svelte.setup(config())
lsp.vuels.setup(config())
lsp.rust_analyzer.setup(config())
lsp.texlab.setup(config())
lsp.csharp_ls.setup(config())
