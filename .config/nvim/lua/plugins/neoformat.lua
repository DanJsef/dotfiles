vim.g.neoformat_enabled_yaml = {"prettier"}

vim.cmd([[
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
]])
