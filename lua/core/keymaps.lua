vim.keymap.set("n", "<leader>ef", vim.cmd.Ex, {
  desc = "Open netrw file explorer",
})

vim.keymap.set("n", "<leader>ws", function()
  vim.cmd([[%s/\s\+$//e]])
  vim.cmd("nohlsearch")
end, {
  desc = "Strip trailing whitespace",
})

--local font_name = "JetBrainsMono Nerd Font Mono"
local font_name = "FiraMono Nerd Font Mono"
local font_size = 16

local function update_font()
    vim.o.guifont = string.format("%s:h%d", font_name, font_size)
end

-- Increase font size (Ctrl+=)
vim.keymap.set("n", "<C-=>", function()
    font_size = font_size + 1
    update_font()
end, { desc = "Increase font size" })

-- Decrease font size (Ctrl+-)
vim.keymap.set("n", "<C-->", function()
    font_size = math.max(6, font_size - 1) -- prevent tiny sizes
    update_font()
end, { desc = "Decrease font size" })

-- Set initial font
update_font()
