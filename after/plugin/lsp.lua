local lsp = require('lsp-zero')
local cmp = require('cmp')

lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
    'gopls',
    'cmake',
    'clangd'
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    local opts = {buffer = bufnr}

    vim.keymap.set({'n', 'x'}, 'gq', function()
        vim.lsp.buf.format({async = false, timeout_ms = 10000})
    end, opts)
end)

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

lsp.setup()
