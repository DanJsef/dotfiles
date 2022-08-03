local utils = require('utils')
local version = vim.version()
local db = require('dashboard')

utils.map('n', '<leader>dd', '<cmd>Dashboard<CR>')

vim.g.dashboard_enable_session = false

db.custom_header = {
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
  'version: ' .. version['major'] .. '.' .. version['minor'] .. '.' .. version['patch'],
  '',
  '',
}


db.custom_center = {
  {
    icon = ' ',
    desc = 'Find session                            ',
    shortcut = 'SPC f s',
    action =  'Telescope session-lens search_session'},
  {
    icon = ' ',
    desc = 'Recently opened files                   ',
    shortcut = 'SPC f h',
    action =  'DashboardFindHistory'},
  {
    icon = ' ',
    desc = 'Find file                               ',
    shortcut = 'SPC f f',
    action = 'Telescope find_files'},
  {
    icon = ' ',
    desc = 'File browser                            ',
    shortcut = 'SPC f b',
    action =  'Telescope file_browser'},
  {
    icon = ' ',
    desc = 'Find word                               ',
    shortcut = 'SPC f g',
    action = 'Telescope live_grep'},
  {
    icon = ' ',
    desc = 'Open personal dotfiles                  ',
    shortcut = 'SPC f d',
    action = 'Telescope find_files cwd=~/.config/nvim'},
}

db.custom_footer = {}
