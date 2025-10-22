# ✨ Neovim Config ✨

Minimal, fast, and organized. A clean Neovim configuration inspired by '90s aesthetics — functional, no fluff.

## 🚀 Features
- **Telescope** — Powerful fuzzy finder for files, live grep, buffers, and more
- **Multiple Themes** — Gruvbox, Catppuccin, Tokyonight, Onedark, Dracula, Borland
- **Persistent Theme Switching** — remembers your last vibe
- **Fast Switching** — cycle themes instantly with `F8`
- **Lua-based** — clean and modular
- **File Explorer** — Ranger integration for better file browsing
- **LSP Support** — Built-in Language Server Protocol support
- **LÖVE Development** — Specialized support for LÖVE2D game development
- **Lua Syntax** — Enhanced Lua syntax highlighting

---

## ⌨️ Keybindings
| Keybinding | Action |
|-----------|--------|
| `F8`       | Cycle through themes |
| `<leader>ff`| Telescope: Find files |
| `<leader>fg`| Telescope: Live grep |
| `<leader>fb`| Telescope: List buffers |
| `<leader>fh`| Telescope: Help tags |
| `<leader>r`| Open Ranger file explorer |
| `F5`       | Run LÖVE2D game (Tetris) |
| `gd`       | LSP: Go to definition |
| `gr`       | LSP: Show references |
| `:ResetTheme`| Reset to default theme |

---

## 📦 Plugins

- **lazy.nvim** — Fast plugin manager
- **telescope.nvim** — Fuzzy finder for files, live grep, buffers, and more
- **Theme Collection** — Gruvbox, Catppuccin, Tokyonight, Onedark, Dracula, Borland
- **ranger.vim** — File explorer integration
- **nvim-lspconfig** — Language Server Protocol support
- **vim-lua** — Enhanced Lua syntax highlighting
- **vim-love-docs** — LÖVE2D documentation and autocompletion

---

## 💿 Installation

### Prerequisites
- Install **ranger** file manager on your system:
  - **macOS**: `brew install ranger`
  - **Ubuntu/Debian**: `sudo apt install ranger`
  - **Arch Linux**: `sudo pacman -S ranger`
  - **Fedora**: `sudo dnf install ranger`
- Install **ripgrep** for Telescope live grepping functionality:
  - **macOS**: `brew install ripgrep`
  - **Ubuntu/Debian**: `sudo apt install ripgrep`
  - **Arch Linux**: `sudo pacman -S ripgrep`
  - **Fedora**: `sudo dnf install ripgrep`

### Setup
```bash
git clone git@github.com:rubensoleao/nvim-config.git ~/.config/nvim
nvim +":Lazy sync"
```
- Press **F8** to cycle themes
- Your theme preference is saved automatically

---

## 🛠 Configuration

- **Main Config**: `init.lua` — Bootstrap lazy.nvim and general settings
- **Plugins**: `lua/plugins.lua` — Main plugin configuration
- **Themes**: `lua/plugins/themes.lua` — Theme plugin definitions
- **Theme Logic**: `lua/theme.lua` — Theme switching and persistence logic
- **Keymaps**: `lua/keymaps.lua` — Custom keybindings
- **Telescope**: `lua/plugins/telescope.lua` — Fuzzy finder configuration
- **Ranger**: `lua/plugins/ranger.lua` — File explorer configuration
- **Theme Storage**: `theme.txt` — Persistent theme preference
