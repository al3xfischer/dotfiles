
require 'al3xfischer.global'

if vim.g.vscode then
  require 'al3xfischer.vscode'
else
  require 'al3xfischer.terminal'
end

