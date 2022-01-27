local utils = require('utils')

local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
    	prompt_position = "top",
    },
    mappings = {
      i = {
        ["<ESC>"] = actions.close,
        ["<C-k>"] = actions.move_selection_next,
        ["<C-l>"] = actions.move_selection_previous,
				["<C-b>"] = actions.delete_buffer,
      },
    },
		file_ignore_patterns = {
			".git"
		}
  },
	pickers = {
		find_files = {
			hidden = true,
		}
	}
}

-- Bindings

utils.map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>')
utils.map('n', '<leader>ft', '<cmd>lua require("telescope.builtin").file_browser()<cr>')
utils.map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>')
utils.map('n', '<leader>bf', '<cmd>lua require("telescope.builtin").buffers()<cr>')
utils.map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").treesitter()<cr>')
utils.map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<cr>')
utils.map('n', '<leader>fd', '<cmd>lua require("telescope.builtin").lsp_workspace_diagnostics()<cr>')
