require("plugins")
require("lsp/lsp-lua")
require("lsp/lsp-ts")
-- require("lsp/lsp-java")
vim.api.nvim_command([[
autocmd FileType java lua require('lsp/lsp-java')
]])
require("lsp")
require("settings")
require("mappings")
