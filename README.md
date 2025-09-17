# ✨ Neovim Config ✨

Minimal, fast, and organized. A clean Neovim configuration inspired by '90s aesthetics — functional, no fluff.

## 🚀 Features
- **Multiple Themes** — Gruvbox, Catppuccin, Tokyonight, Onedark, Dracula
- **Persistent Theme Switching** — remembers your last vibe
- **Fast Switching** — cycle themes instantly with `F8`
- **Lua-based** — clean and modular

---

## ⌨️ Keybindings
| Keybinding | Action |
|-----------|--------|
| `F8`       | Cycle through themes |
| `<leader>w`| Save file             |
| `<leader>q`| Quit Neovim           |
| `<leader>th`| Switch themes         |
| `:ResetTheme`| Reset to default theme |

---


## 💿 Installation

```bash
git clone git@github.com:rubensoleao/nvim-config.git ~/.config/nvim
nvim +":Lazy sync"
```
- Press **F8** to cycle themes
- Your theme preference is saved automatically

---

## 🛠 Configuration

- **Main Config**: `init.lua`
- **Plugins**: `lua/plugins.lua`
- **Themes**: `lua/plugins/themes.lua`
- **Theme Logic**: `lua/theme.lua`
- **Keymaps**: `lua/keymaps.lua`
