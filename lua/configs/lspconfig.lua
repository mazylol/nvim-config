require("nvchad.configs.lspconfig").defaults()

local servers = { "clangd", "gopls", "rust_analyzer", "c3-lsp", "mesonlsp", "markdown_oxide", "svelte-language-server", "hls", "basedpyright", "ruff", "ltex_plus", "typescript-language-server", "zls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
