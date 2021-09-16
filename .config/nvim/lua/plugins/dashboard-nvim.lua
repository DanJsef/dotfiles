local utils = require('utils')
local version = vim.version()

utils.map('n', '<leader>dd', '<cmd>Dashboard<CR>')

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_header = {
  '',
  '',
  '███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  '████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  '██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  '██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  '██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  '╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
  '',
  '',
  '                    version: ' .. version['major'] .. '.' .. version['minor'] .. '.' .. version['patch'],
  '',
  '',
}

vim.g.dashboard_custom_section = {
  find_session = {
    description = {'  Find session                            SPC f s'},
    command =  'Telescope session-lens search_session'},
  find_history = {
    description = {'  Recently opened files                   SPC f h'},
    command =  'DashboardFindHistory'},
  find_file  = {
    description = {'  Find  File                              SPC f f'},
    command = 'Telescope find_files'},
  new_file = {
   description = {'  File Browser                            SPC f b'},
   command =  'Telescope file_browser'},
  find_word = {
   description = {'  Find  word                              SPC f g'},
   command = 'DashboardFindWord'},
  find_dotfiles = {
   description = {'  Open Personal dotfiles                  SPC f d'},
   command = 'Telescope find_files cwd=~/.config/nvim'},
}

