-- Leader
vim.g.mapleader = " "

-- Core Behavior
vim.opt.autoread = true
vim.opt.encoding = "utf-8"
vim.opt.fileformat = "unix"
vim.opt.fileformats = { "unix", "dos" }
vim.opt.hidden = true
vim.opt.modelines = 0
vim.opt.compatible = false

-- UI / Display
vim.opt.cursorline = true
vim.opt.laststatus = 2
vim.opt.linespace = 4
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.scrolloff = 4
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.visualbell = false
vim.opt.ttyfast = true
vim.opt.guifont = "JetBrainsMono Nerd Font Mono:h12"

-- Colors / Syntax
vim.opt.syntax = "on"
vim.opt.background = "dark"
vim.cmd("colorscheme default")

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Auto-Indentation / Formatting
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.cinoptions = "l1,g0,t0,(0,W4,:4"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ "c", "r", "o" })
    end,
})

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = false

-- Command-Line Completion
vim.opt.wildmenu = true

-- Mouse / Clipboard
vim.opt.mouse = "a"
vim.opt.clipboard = { "unnamed", "unnamedplus" }

-- Netrw
vim.g.netrw_banner = 0
vim.g.netrw_list_hide = [[.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\./$]]
vim.g.netrw_bufsettings = "noma nomod nobl nowrap ro"
