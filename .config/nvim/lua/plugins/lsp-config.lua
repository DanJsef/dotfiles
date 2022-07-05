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
utils.map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
utils.map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
utils.map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
utils.map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')
utils.map('n', '<leader>bb', '<cmd>lua vim.lsp.buf.format()<CR>')

vim.api.nvim_exec([[
  augroup lsp_document_highlight
    autocmd! * <buffer>
    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
  augroup END
]], false)

--local lsp_installer = require("nvim-lsp-installer")

--lsp_installer.on_server_ready(function(server)
		--require'lsp_signature'.setup({cfg = {fix_pos = true}});
		--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    --local opts = { capabilities = capabilities }

		--if server.name == "sumneko_lua" then
			--opts.settings = {Lua = {
						--diagnostics = {
								--globals = { 'vim', 'use' }
						--}
				--}}
		--end

		--if server.name == "clangd" then
			--opts.cmd = { "clangd", "--header-insertion=iwyu", "--background-index" }
		--end


    --server:setup(opts)
--end)

local lspinstaller = require'nvim-lsp-installer'
local lspconfig = require'lspconfig'
require'lsp_signature'.setup({cfg = {fix_pos = true}});

lspinstaller.setup{}

for _, server in ipairs(lspinstaller.get_installed_servers()) do
  lspconfig[server.name].setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  }
end
