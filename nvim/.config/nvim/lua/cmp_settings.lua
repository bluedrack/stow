--- Set completeopt to have a better completion experience
require("lsp-format").setup {}
vim.o.completeopt = 'menuone,noselect'

-- luasnip setup
local luasnip = require('luasnip')
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig').pyright.setup {
	on_attach = require "lsp-format".on_attach,
	capabilities = capabilities,
}

require('lspconfig').html.setup {
	on_attach = require "lsp-format".on_attach,
	capabilities = capabilities
}

require('lspconfig').clangd.setup {
	on_attach = require "lsp-format".on_attach,
	capabilities = capabilities
}

require('lspconfig').tsserver.setup {
	on_attach = require "lsp-format".on_attach,
	capabilities = capabilities,
}

require('lspconfig').sumneko_lua.setup {
	on_attach = require "lsp-format".on_attach,
	cmd = {"lua-language-server"},
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
}

require('lspconfig').vhdl_ls.setup {
	on_attach = require "lsp-format".on_attach,
	cmd = {"vhdl-ls"},
	capabilities = capabilities
}

require('lspconfig').metals.setup {
	on_attach = require "lsp-format".on_attach,
	cmd = {"metals"},
	capabilities = capabilities
}

