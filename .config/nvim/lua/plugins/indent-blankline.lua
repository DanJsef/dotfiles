require("indent_blankline").setup {
  char = "┆",
  buftype_exclude = {"terminal"},
  use_treesitter = true,
  max_indent_increase = 1,
  bufname_exclude = {'README.md', 'dashboard'},
  show_current_context = true,
  context_patterns = {'class', 'function', 'method', 'for', 'if', 'else'}
}
