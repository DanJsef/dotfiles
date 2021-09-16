local utils = require('utils')

require'auto-session'.setup({
  auto_session_enable_last_session = false,
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_restore_enabled = false,
  auto_session_suppress_dirs = {utils.home}
})

require('session-lens').setup {
  path_display = {'shorten'},
}

utils.map('n', '<leader>fs', '<cmd>lua require("session-lens").search_session()<CR>')
