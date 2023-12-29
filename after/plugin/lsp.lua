local lsp = require('lsp-zero')


-- lsp setup 
require('lspconfig').lua_ls.setup({})
require'lspconfig'.dockerls.setup{}
require'lspconfig'.cssmodules_ls.setup{}

lsp.setup()


local cmp = require('cmp')

local cmp_select = {behavior = cmp.SelectBehavior.insert}

 cmp.setup({
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
	['<C-Space>'] = cmp.mapping.complete(),
	['<Tab>'] = cmp.mapping.confirm({select = true}),
	['<CR>'] = cmp.mapping.confirm({select = true}),
    })
})
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp.default_setup,
  },
})
