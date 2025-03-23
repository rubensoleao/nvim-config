```markdown
# ✨ Neovim Config ✨

> *"Lean. Fast. Focused."*

![Retro](https://i.gifer.com/origin/b6/b6d11bdcc20d79e06210ab7a9b8c9426_w200.gif)

---

## 🌙 Intro
Minimal, fast, and organized. A clean Neovim configuration inspired by '90s aesthetics — functional, no fluff.

![Vaporwave Terminal](https://media1.giphy.com/media/d9QiBcfzg64Io/giphy.gif)

---

## 🚀 Features
- **Multiple Themes** — Gruvbox, Catppuccin, Tokyonight, Onedark, Dracula
- **Persistent Theme Switching** — remembers your last vibe
- **Fast Switching** — cycle themes instantly with `F8`
- **Lua-based** — clean and modular

![Classic Mac Desktop](https://i.gifer.com/origin/2b/2b7a0a9ccae16e550008018cb9333063.gif)

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

![Vintage Linux Terminal](https://64.media.tumblr.com/f50c3cf960f3c3c5270383820a41dfd7/tumblr_om41fjrd1F1vgrpsro1_500.gif)

## 💿 Installation

```bash
git clone https://github.com/rubensoleao/nvim-config.git ~/.config/nvim
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

![90s Vaporwave Vibes](https://i.gifer.com/J2Vg.gif)

---

### ✌️ **Keep it simple. Keep it fast.**
```
