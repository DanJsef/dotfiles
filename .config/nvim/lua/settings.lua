local utils = require('utils')

function ToggleSpellCheck()
  vim.cmd('set spell!')
end

utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'termguicolors', true)
utils.opt('o', 'encoding', 'utf8')
utils.opt('o', 'writebackup', false)
utils.opt('o', 'showmode', false)
utils.opt('o', 'hidden', true)
utils.opt('o', 'cmdheight', 2)
utils.opt('o', 'clipboard', 'unnamed,unnamedplus')
utils.opt('b', 'shiftwidth', 2)
utils.opt('b', 'autoindent', true)
utils.opt('b', 'smartindent', true)
utils.opt('o', 'undodir', utils.home .. '/.local/share/nvim/undodir')
utils.opt('o', 'undolevels', 1000)
utils.opt('o', 'undoreload', 10000)
utils.opt('b', 'undofile', true)
utils.opt('o', 'spelllang', 'en')

utils.map('', ';', 'l')
utils.map('', 'l', 'k')
utils.map('', 'k', 'j')
utils.map('', 'j', 'h')

utils.map('n', '<leader>ss', '<cmd>w<cr>')
utils.map('n', '<leader>nh', '<cmd>noh<cr>')

utils.map('n', '<leader>k', '<C-W><C-J>')
utils.map('n', '<leader>l', '<C-W><C-K>')
utils.map('n', '<leader>;', '<C-W><C-L>')
utils.map('n', '<leader>j', '<C-W><C-H>')

utils.map('n', '<leader>sc', '<cmd>lua ToggleSpellCheck()<cr>')
utils.map('n', '<leader>bc', '<cmd>bd<CR>')
