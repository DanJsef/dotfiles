local cmp = require'cmp'
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({
  behavior = cmp.ConfirmBehavior.Replace,
  select = true,
})
  },
  sources = {
    { name = 'nvim_lsp', priority = 9 },
    { name = 'nvim_lua', priority = 8 },
    { name = 'treesitter', priority = 6 },
    { name = 'spell', priority = 3 },
    { name = 'buffer', priority = 4 },
    { name = 'path', priority = 5 },
    { name = 'latex_symbols', priority = 7 },
    { name = 'calc', priority = 1 },
    { name = 'tags', priority = 2 },
    { name = 'orgmode', priority = 9 },
    --{ name = 'dictionary', priority = 1 },
  },
  formatting = {
		format = lspkind.cmp_format({
    mode = 'symbol_text',
    maxwidth = 50,

    before = function (entry, vim_item)
			vim_item.menu = ({
				buffer = "[Buffer]",
				nvim_lsp = "[LSP]",
				luasnip = "[LuaSnip]",
				nvim_lua = "[Lua]",
				latex_symbols = "[Latex]",
				spell = "[Spell]",
				path = "[Path]",
				calc = "[Calc]",
				tags = "[Tags]",
				treesitter = "[Treesitter]",
				dictionary = "[Dictionary]",
			})[entry.source.name]
      return vim_item
    end
  	})
	},
preselect = cmp.PreselectMode.None,
})

require("cmp_dictionary").setup({
    dic = {
        ["*"] = { "/home/danielj/.local/share/dict/en" },
    },
})
