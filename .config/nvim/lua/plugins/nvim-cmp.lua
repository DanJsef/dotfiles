local cmp = require'cmp'
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
      { name = 'nvim_lsp' },
      { name = 'nvim_lua' },
      { name = 'treesitter' },
      { name = 'spell' },
      { name = 'buffer' },
      { name = 'path' },
      { name = 'latex_symbols' },
      { name = 'calc' },
      { name = 'tags' },
    },
    formatting = {
      format = function(entry, vim_item)
	  -- fancy icons and a name of kind
	  vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

	  -- set a name for each source
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
	  })[entry.source.name]
	  return vim_item
	end,
	},
	preselect = cmp.PreselectMode.None,
  })
