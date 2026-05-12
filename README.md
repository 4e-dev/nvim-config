# Neovim Config

Neovim configuration for C/C++ development on Windows using Neovide.

## Stack

- Neovim 0.11+
- Neovide
- Lua config
- lazy.nvim
- clangd
- blink.cmp
- Telescope
- Treesitter

## Directory Structure

```txt
nvim/
├── init.lua
└── lua/
    ├── config/
    │   └── lazy.lua
    ├── core/
    │   ├── keymaps.lua
    │   ├── neovide.lua
    │   └── options.lua
    └── plugins/
        ├── completion.lua
        ├── lsp.lua
        ├── telescope.lua
        └── treesitter.lua
````

## Required Tools

Install LLVM/clangd:

```powershell
winget install LLVM.LLVM
```

Verify:

```powershell
clangd --version
```

Install ripgrep for Telescope live grep:

```powershell
winget install BurntSushi.ripgrep.MSVC
```

Verify:

```powershell
rg --version
```

Optional: install fd for faster file finding:

```powershell
winget install sharkdp.fd
```

Verify:

```powershell
fd --version
```

## Plugin Management

Open Neovim and run:

```vim
:Lazy
```

Sync/install plugins:

```vim
:Lazy sync
```

Update plugins:

```vim
:Lazy update
```

## LSP

Check attached language servers:

```vim
:LspInfo
```

For C/C++, this config uses:

```txt
clangd
```

For best results, generate a compilation database:

```powershell
cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
copy build\compile_commands.json .
```

## Keymaps

### General

| Keymap       | Action                    |
| ------------ | ------------------------- |
| `<leader>w`  | Save                      |
| `<leader>q`  | Quit                      |
| `<leader>ef` | Open netrw file explorer  |
| `<leader>ws` | Strip trailing whitespace |

Leader key:

```txt
Space
```

### LSP

| Keymap       | Action                |
| ------------ | --------------------- |
| `gd`         | Go to definition      |
| `gr`         | Go to references      |
| `K`          | Hover documentation   |
| `<leader>rn` | Rename symbol         |
| `<leader>ca` | Code action           |
| `<leader>e`  | Show diagnostic popup |
| `[d`         | Previous diagnostic   |
| `]d`         | Next diagnostic       |

### Telescope

| Keymap       | Action           |
| ------------ | ---------------- |
| `<leader>ff` | Find files       |
| `<leader>fg` | Live grep        |
| `<leader>fb` | Find buffers     |
| `<leader>fh` | Help tags        |
| `<leader>fr` | Recent files     |
| `<leader>fs` | Document symbols |
| `<leader>fd` | Diagnostics      |

### Completion

Using `blink.cmp` with the `super-tab` preset.

Common behavior:

| Keymap       | Action                    |
| ------------ | ------------------------- |
| `Tab`        | Accept/select completion  |
| `Ctrl-Space` | Open completion menu/docs |
| `Ctrl-n`     | Next completion item      |
| `Ctrl-p`     | Previous completion item  |
| `Ctrl-e`     | Hide completion menu      |
| `Ctrl-k`     | Toggle signature help     |

## Treesitter

Install parsers manually if needed:

```vim
:TSInstall cpp c lua
```

Update parsers:

```vim
:TSUpdate
```

This config uses the `master` branch of `nvim-treesitter`.

## Diagnostics

Show current line diagnostic:

```vim
<leader>e
```

Search all diagnostics:

```vim
<leader>fd
```

Move through diagnostics:

```vim
]d
[d
```

## Git Setup

Initialize repo:

```powershell
git init
git add .
git commit -m "Initial Neovim Lua config"
```

Add remote:

```powershell
git remote add origin git@github.com:<username>/<repo>.git
git branch -M main
git push -u origin main
```

## Windows Config Location

Default config path:

```txt
%LOCALAPPDATA%\nvim
```

Equivalent full path:

```txt
C:\Users\<username>\AppData\Local\nvim
```
