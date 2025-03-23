# 🕹️ Rubens' Retro Neovim Setup 🕹️

> *"In a world full of IDEs, be the rad Vim warrior from the '90s."*

![Retro](https://i.gifer.com/origin/b6/b6d11bdcc20d79e06210ab7a9b8c9426_w200.gif)

---

## 📼 Intro
A blazing fast, retro-styled Neovim configuration to fuel your nostalgia and productivity. Inspired by the neon-lit glow of the '90s, Mac OS classic, Linux terminals, and vaporwave aesthetics.

![Vaporwave Terminal](https://media1.giphy.com/media/d9QiBcfzg64Io/giphy.gif)

---

## 📟 Features
- 🌈 **Multiple Rad Themes** — Gruvbox, Catppuccin, Tokyonight, Onedark, Dracula
- 💾 **Persistent Theme Switching** — remembers your vibe across sessions
- 🎨 **Dynamic Theme Cycling** — hit `F8` to switch themes instantly
- 📡 **Lazy.nvim Plugin Manager** — load plugins with warp-speed
- 💻 **Lua Powered Config** — clean, modular, futuristic yet retro

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

## 📀 Installation

```bash
git clone https://github.com/rubensoleao/nvim-config.git ~/.config/nvim
nvim +":Lazy sync"
```

- Press **F8** to cycle themes
- Your theme preference is auto-saved! 🎉

---

## 🛠 Configuration

- **Main Configuration**: `init.lua`
- **Plugins**: `lua/plugins.lua`
- **Themes**: `lua/plugins/themes.lua`
- **Theme Logic**: `lua/theme.lua`
- **Keymaps**: `lua/keymaps.lua`

![90s Vaporwave Vibes](https://i.gifer.com/J2Vg.gif)

---

### ⚡️ **Stay Rad! Keep Coding!** ⚡️
