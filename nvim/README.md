# 💤 LazyVim Configuration

My personal Neovim configuration based on [LazyVim](https://www.lazyvim.org/), a Neovim setup powered by [lazy.nvim](https://github.com/folke/lazy.nvim).

## ✨ Features

- 🔥 **Modern Neovim setup** with LazyVim as the foundation
- 🎨 **Multiple colorschemes**: Gruvbox (default), Solarized Osaka, Catppuccin
- 📦 **Plugin management** with lazy.nvim
- 🔍 **Fuzzy finding** with Telescope
- 🌳 **Treesitter** for better syntax highlighting
- 💡 **LSP support** for TypeScript, Lua, CSS, HTML, Tailwind, and more
- ✨ **Autocompletion** with nvim-cmp and Blink
- 🎯 **Git integration** with fugitive, rhubarb, and git.nvim
- 🎨 **Color highlighting** for hex, rgb, hsl values
- 📝 **Code formatting** with Prettier
- 🔧 **Linting** with ESLint
- 🎪 **Zen mode** for distraction-free writing
- 🤠 **Cowboy mode** - prevents spam of hjkl keys (encourages better Vim motions)

## 📋 Requirements

- Neovim >= 0.9.0 (needs to be built with LuaJIT)
- Git >= 2.19.0 (for partial clones support)
- A [Nerd Font](https://www.nerdfonts.com/) (optional, but recommended)
- [ripgrep](https://github.com/BurntSushi/ripgrep) for Telescope live grep
- A C compiler for treesitter (gcc, clang, etc.)
- [Node.js](https://nodejs.org/) for LSP servers

### Optional Dependencies

- [lazygit](https://github.com/jesseduffield/lazygit) - for git integration
- [fd](https://github.com/sharkdp/fd) - for faster file finding
- [fish shell](https://fishshell.com/) - configured as default shell in options

## 🚀 Installation

### Backup Your Current Config

```bash
# Required
mv ~/.config/nvim ~/.config/nvim.bak

# Optional but recommended
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Clone This Config

```bash
git clone https://github.com/YOUR_USERNAME/nvim-config.git ~/.config/nvim
```

### Start Neovim

```bash
nvim
```

The plugins will be automatically installed on first launch.

## 📁 Structure

```
~/.config/nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── config/
│   │   ├── autocmds.lua       # Auto commands
│   │   ├── keymaps.lua        # Key mappings
│   │   ├── lazy.lua           # Lazy.nvim setup
│   │   └── options.lua        # Neovim options
│   ├── plugins/
│   │   ├── coding.lua         # Coding plugins (neogen, refactoring, etc.)
│   │   ├── colorscheme.lua    # Color schemes
│   │   ├── disabled.lua       # Disabled plugins
│   │   ├── editor.lua         # Editor plugins (telescope, git, etc.)
│   │   ├── lint.lua           # Linting configuration
│   │   ├── lsp.lua            # LSP configuration
│   │   ├── treesitter.lua     # Treesitter configuration
│   │   └── ui.lua             # UI plugins (noice, lualine, etc.)
│   ├── craftzdog/
│   │   ├── discipline.lua     # Cowboy mode (hjkl spam prevention)
│   │   └── utils.lua          # Color conversion utilities
│   └── util/
│       └── debug.lua          # Debug utilities
└── README.md
```

## ⌨️ Key Mappings

### General

| Key | Mode | Description |
|-----|------|-------------|
| `<Space>` | n | Leader key |
| `x` | n | Delete without yanking |
| `<Leader>p` | n/v | Paste from register 0 |
| `<Leader>d` | n/v | Delete without yanking |
| `<Leader>c` | n/v | Change without yanking |

### Window Management

| Key | Mode | Description |
|-----|------|-------------|
| `ss` | n | Split window horizontally |
| `sv` | n | Split window vertically |
| `sh/sk/sj/sl` | n | Move to window (left/up/down/right) |
| `<C-w><arrows>` | n | Resize window |

### Tabs

| Key | Mode | Description |
|-----|------|-------------|
| `te` | n | New tab |
| `<Tab>` | n | Next tab |
| `<S-Tab>` | n | Previous tab |

### Telescope

| Key | Mode | Description |
|-----|------|-------------|
| `;f` | n | Find files |
| `;r` | n | Live grep |
| `\\` | n | List buffers |
| `;t` | n | Help tags |
| `;;` | n | Resume last search |
| `;e` | n | Diagnostics |
| `;s` | n | Treesitter symbols |
| `sf` | n | File browser |

### LSP

| Key | Mode | Description |
|-----|------|-------------|
| `gd` | n | Go to definition (Telescope) |
| `<C-j>` | n | Next diagnostic |

### Git

| Key | Mode | Description |
|-----|------|-------------|
| `<Leader>gb` | n | Git blame |
| `<Leader>go` | n | Open in browser |

### Coding

| Key | Mode | Description |
|-----|------|-------------|
| `<Leader>cc` | n | Generate documentation |
| `<Leader>r` | v | Refactoring menu |
| `<Leader>z` | n | Zen mode |

## 🎨 Colorschemes

Available colorschemes:
- **Gruvbox** (default) - with transparency
- **Solarized Osaka** - with transparency
- **Catppuccin**

To change colorscheme, edit `lua/config/lazy.lua`:

```lua
opts = {
  colorscheme = "gruvbox", -- or "solarized-osaka" or "catppuccin"
}
```

## 🔧 Customization

### Adding Your Own Plugins

Create a new file in `lua/plugins/` directory:

```lua
-- lua/plugins/myplugin.lua
return {
  {
    "author/plugin-name",
    opts = {
      -- your options
    },
  },
}
```

### Modifying LSP Servers

Edit `lua/plugins/lsp.lua` to add or configure LSP servers:

```lua
servers = {
  your_lsp = {
    -- configuration
  },
}
```

### Adding Keymaps

Add custom keymaps in `lua/config/keymaps.lua`:

```lua
vim.keymap.set("n", "<leader>x", function()
  -- your function
end, { desc = "Description" })
```

## 🛠️ LSP Servers

Configured LSP servers (auto-installed via Mason):
- **TypeScript/JavaScript**: tsserver
- **Lua**: lua_ls
- **CSS**: cssls
- **HTML**: html
- **Tailwind**: tailwindcss
- **YAML**: yamlls

Additional tools:
- stylua (Lua formatter)
- selene (Lua linter)
- shellcheck (Shell script linter)
- shfmt (Shell script formatter)
- ESLint (JS/TS linter)
- Prettier (formatter)

## 🐛 Troubleshooting

### Plugins not loading

```bash
# Remove plugin cache and reinstall
rm -rf ~/.local/share/nvim
nvim
```

### LSP not working

```bash
# Check LSP status
:LspInfo

# Check Mason installations
:Mason
```

### Treesitter issues

```bash
# Update all parsers
:TSUpdate

# Check Treesitter status
:checkhealth nvim-treesitter
```

## 📚 Resources

- [LazyVim Documentation](https://www.lazyvim.org/)
- [Neovim Documentation](https://neovim.io/doc/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)

## 🙏 Credits

This configuration is inspired by:
- [LazyVim](https://github.com/LazyVim/LazyVim)
- [craftzdog's dotfiles](https://github.com/craftzdog/dotfiles-public)

## 📝 License

Feel free to use and modify this configuration for your own needs.

