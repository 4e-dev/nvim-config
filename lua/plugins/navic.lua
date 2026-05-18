return {
    "SmiteshP/nvim-navic",
    dependencies = {
        "neovim/nvim-lspconfig",
    },
    config = function()
        local navic = require("nvim-navic")

        vim.lsp.config("clangd", {
            on_attach = function(client, bufnr)
                navic.attach(client, bufnr)
            end,
        })

        vim.lsp.enable("clangd")

        vim.o.winbar =
            "%{%v:lua.require'nvim-navic'.get_location()%}"
    end,
}
