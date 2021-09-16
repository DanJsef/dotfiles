local utils = require('../utils')

  -- Mappings.
  utils.map('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>')
  utils.map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')
  utils.map('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>')
  utils.map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
    utils.map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
  utils.map('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
  utils.map('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
  utils.map('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
  utils.map('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
  utils.map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
  utils.map('n', '<leader>ac', '<cmd>lua vim.lsp.buf.code_action()<CR>')
  utils.map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
  utils.map('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
  utils.map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
  utils.map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
  utils.map('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
  utils.map('n', '<leader>bb', '<cmd>lua vim.lsp.buf.formatting()<CR>')

    vim.api.nvim_exec([[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)

-- Auto install language servers extension

require'lspinstall'.setup()

require'lspconfig'.lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'use' }
            }
        }
    }
}

local servers = {'python','csharp', 'typescript', 'html', 'dockerfile', 'latex'}--require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{
  }
end
