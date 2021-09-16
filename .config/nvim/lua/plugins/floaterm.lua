local utils = require('utils')

vim.g.floaterm_wintype = 'float'
vim.g.floaterm_width = 0.85
vim.g.floaterm_height = 0.95
vim.g.floaterm_autoclose = 2
vim.g.floaterm_title = ''
vim.g.floaterm_borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' }
vim.g.floaterm_position = 'top'

vim.cmd([[highlight FloatermBorder guifg=none]])

utils.map('n', '<leader>tt', '<cmd>FloatermToggle --name=term<CR>')
utils.map('t', '<ESC>', '<cmd>FloatermHide --name=term<CR>')
utils.map('n', '<leader>tg', '<cmd>FloatermNew --name=lazygit lazygit<CR>')
utils.map('n', '<leader>tr', '<cmd>FloatermNew --name=ranger ranger<CR>')

