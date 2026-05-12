return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "saghen/blink.cmp",
    },

    config = function()
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        vim.lsp.config("clangd", {
            capabilities = capabilities,
            cmd = { "clangd" },
            filetypes = {
                "c",
                "cpp",
                "objc",
                "objcpp",
                "cuda",
            },
        })

        vim.lsp.enable("clangd")

        vim.keymap.set("n", "gd", vim.lsp.buf.definition)
        vim.keymap.set("n", "gr", vim.lsp.buf.references)
        vim.keymap.set("n", "K", vim.lsp.buf.hover)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
    end,
}
