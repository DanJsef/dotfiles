require('orgmode').setup_ts_grammar()

require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = {'/home/danielj/Documents/notes/*', '/home/danielj/Documents/notes/*/*'},
  org_default_notes_file = '/home/danielj/Documents/notes/dump.org',
  org_indent_mode = 'noindent',
})

require("org-bullets").setup {
  symbols = { "◉", "○", "✸", "✿" }
}
