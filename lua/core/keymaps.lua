-- Open netrw file explorer
vim.keymap.set("n", "<leader>ef", vim.cmd.Ex)

-- Strip trailing whitespace
vim.keymap.set("n", "<leader>ws", function()
  vim.cmd([[%s/\s\+$//e]])
  vim.cmd("nohlsearch")
end)

local font_name = "JetBrainsMono Nerd Font Mono"
local font_size = 20

local function update_font()
    vim.o.guifont = string.format("%s:h%d", font_name, font_size)
end

-- Set initial font
update_font()

-- Increase font size (Ctrl+=)
vim.keymap.set("n", "<C-=>", function()
    font_size = font_size + 2
    update_font()
end)

-- Decrease font size (Ctrl+-)
vim.keymap.set("n", "<C-->", function()
    font_size = math.max(12, font_size - 2) -- prevent tiny sizes
    update_font()
end)

-- Toggle dark/light mode
vim.keymap.set('n', '<leader>td', function()
    vim.o.background = 'dark'
end)
vim.keymap.set('n', '<leader>tl', function()
    vim.o.background = 'light'
end)

-- Keep yank register after pasting over text
vim.keymap.set("v", "<leader>p", "\"_dP")
