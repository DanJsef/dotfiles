local utils = require('utils')

vim.g.floaterm_wintype = 'float'
vim.g.floaterm_width = 0.85
vim.g.floaterm_height = 0.95
vim.g.floaterm_autoclose = 2
vim.g.floaterm_title = ''
vim.g.floaterm_borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' }
vim.g.floaterm_position = 'top'

vim.cmd([[highlight FloatermBorder guifg=none]])

local terms = { ranger = false, lazygit = false, wb = false}

function ToggleTerm(term)
	if terms[term] then
		vim.cmd('FloatermShow ' .. term)
	else
		if term == "wb" then
			vim.cmd('FloatermNew --name=' .. term ..' w3m google.com')
		else
			vim.cmd('FloatermNew --name=' .. term ..' ' .. term)
		end
		terms[term] = true
	end
end

function ResetTerm(term)
	terms[term] = false
end

utils.map('n', '<leader>tt', '<cmd>FloatermToggle --name=term<CR>')
utils.map('n', '<leader>tr', '<cmd>lua ToggleTerm("ranger")<CR>')
utils.map('n', '<leader>tg', '<cmd>lua ToggleTerm("lazygit")<CR>')
utils.map('n', '<leader>tw', '<cmd>lua ToggleTerm("wb")<CR>')
utils.map('t', '<ESC>', '<cmd>FloatermHide<CR>')
utils.map('n', '<leader>tyr', '<cmd>lua ResetTerm("ranger")<CR>')
utils.map('n', '<leader>tyg', '<cmd>lua ResetTerm("lazygit")<CR>')
utils.map('n', '<leader>tyw', '<cmd>lua ResetTerm("wb")<CR>')
