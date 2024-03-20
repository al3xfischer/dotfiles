
vim.g.dbext_default_ORA_bin = 'sql'

-- vim.g.dbs = [[ [ { 'name':'tgd-dev', 'url': 'oracle://tgd/oYai6ti7Ve4aethi@192.168.77.136/tgddev.itm.local' } ] ]]

vim.cmd([[ let g:dbs = [ { 'name':'tgd-dev', 'url': 'oracle://tgd:oYai6ti7Ve4aethi@192.168.77.136/tgddev.itm.local' } ] ]])

--local M = {}
--
--local function db_completion()
--  require("cmp").setup.buffer { sources = { { name = "vim-dadbod-completion" } } }
--end
--
--function M.setup()
--  vim.g.db_ui_save_location = vim.fn.stdpath "config" .. require("plenary.path").path.sep .. "db_ui"
--
--  vim.api.nvim_create_autocmd("FileType", {
--    pattern = {
--      "sql",
--    },
--    command = [[setlocal omnifunc=vim_dadbod_completion#omni]],
--  })
--
--  vim.api.nvim_create_autocmd("FileType", {
--    pattern = {
--      "sql",
--      "mysql",
--      "plsql",
--    },
--    callback = function()
--      vim.schedule(db_completion)
--    end,
--  })
--end
--
--print "asdf"
--
--return M
