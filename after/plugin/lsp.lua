local lsp = require('lsp-zero')
local cmp = require('cmp')

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  }
})

lsp.preset('recommended')

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
