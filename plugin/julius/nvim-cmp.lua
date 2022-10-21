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
	-- ['<C-e>'] = cmp.mapping.close(),
	['<C-j>'] = cmp.mapping.close(),
	['<CR>'] = cmp.mapping.confirm({
	  behavior = cmp.ConfirmBehavior.Replace,
	  select = true,
	}),
  },
  sources = {
	{ name = 'copilot', group_index = 2 },
	{ name = 'nvim_lsp', group_index = 2 },
	{ name = 'luasnip', group_index = 2 },
	{ name = 'buffer', group_index = 2 },
  },
})
