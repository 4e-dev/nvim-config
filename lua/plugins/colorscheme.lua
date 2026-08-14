return {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    init = function()
        -- Force disable all italic variations in gruvbox-material
        vim.g.gruvbox_material_enable_italic = 0
        vim.g.gruvbox_material_disable_italic_comment = 1
        vim.g.gruvbox_material_enable_italic_comment = 0
    end,
    config = function()
        vim.cmd.colorscheme("gruvbox-material")
    end,
}
