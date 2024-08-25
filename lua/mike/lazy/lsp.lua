return {
    {
    "williamboman/mason.nvim",
    config = function ()
            require("mason").setup()
    end
    },
    {
    "williamboman/mason-lspconfig.nvim",
    config = function ()
        require("mason-lspconfig").setup({
            ensure_installed = {
                    "lua_ls",
                    "tsserver",
                    "rust_analyzer",
                    "powershell_es",
                    "pyright",
                    "bashls",
                }
        })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.powershell_es.setup({
                bundle_path = '~/PowerShellEditorServices',
            })
            lspconfig.pyright.setup({})
            lspconfig.jsonls.setup({})
            lspconfig.bashls.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
