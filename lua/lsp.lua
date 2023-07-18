require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed
    ensure_installed = {
        'pyright',
        'lua_ls',
        'rust_analyzer',
        'html',
        'lemminx',
        'java_language_server',
        'kotlin_language_server',
        'gradle_ls'
    },
})

local lspconfig = require('lspconfig')

lspconfig.pyright.setup {}
lspconfig.lua_ls.setup {}
lspconfig.html.setup {}
lspconfig.lemminx.setup {}
lspconfig.java_language_server.setup {}
lspconfig.kotlin_language_server.setup {}
lspconfig.gradle_ls.setup {}

