require'lightspeed'.setup {
  x_mode_prefix_key = '<c-x>',
}

vim.cmd([[
highlight LightspeedLabel cterm=bold,underline ctermfg=9 gui=bold,underline guifg=#bf616a
highlight LightspeedLabelOverlapped cterm=underline ctermfg=13 gui=underline guifg=#81a1c1
highlight LightspeedShortcut cterm=bold,underline ctermfg=15 ctermbg=9 gui=bold,underline guifg=#3b4252 guibg=#bf616a
highlight LightspeedOneCharMatch cterm=bold ctermfg=15 ctermbg=9 gui=bold guifg=#ffffff guibg=8fbcbb#81a1c1
unmap x
]])
