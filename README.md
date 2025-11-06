# 🚀 Dotfiles

My personal configuration files for macOS/Linux development environment.

## 📦 What's Included

### 🖥️ Terminal Emulators

- **[Alacritty](alacritty/)** - GPU-accelerated terminal emulator
  - Gruvbox color scheme
  - Custom font configuration (Hack Nerd Font)
  - Fullscreen startup mode

- **[Kitty](kitty/)** - Fast, feature-rich terminal emulator
  - Embark theme configuration
  - Custom keybindings

- **[Ghostty](ghostty/)** - Modern terminal emulator
  - Minimal configuration
  - Shell integration

### 🐚 Shell Configuration

- **[Fish Shell](fish/)** - User-friendly command line shell
  - Custom aliases and functions
  - OS-specific configurations (macOS/Linux)
  - NVM integration
  - Fzf integration with bat preview
  - Theme customization

### 🔧 Development Tools

- **[Neovim](nvim/)** - Hyperextensible Vim-based text editor
  - LazyVim configuration
  - LSP support for TypeScript, Lua, CSS, HTML, Tailwind
  - Telescope fuzzy finder
  - Treesitter syntax highlighting
  - Git integration
  - [Full documentation](nvim/README.md)

- **[Tmux](tmux/)** - Terminal multiplexer
  - Vim-like keybindings
  - Custom statusline
  - Solarized color scheme
  - macOS-specific configurations

- **[GitUI](gitui/)** - Blazing fast terminal UI for git
  - Custom theme configuration
  - Key bindings

## 🎨 Color Schemes

Most configurations use **Gruvbox** or **Solarized** color schemes for consistency across tools.

## 📋 Requirements

### Essential

- **macOS** or **Linux** (primary target)
- **Git** >= 2.19.0
- **Fish Shell** >= 3.0
- **Neovim** >= 0.9.0
- **Tmux** >= 3.0

### Optional but Recommended

- **Alacritty** or **Kitty** or **Ghostty** (terminal emulator)
- **[Nerd Fonts](https://www.nerdfonts.com/)** (Hack Nerd Font recommended)
- **[eza](https://github.com/eza-community/eza)** - Modern replacement for ls
- **[bat](https://github.com/sharkdp/bat)** - Cat clone with syntax highlighting
- **[fzf](https://github.com/junegunn/fzf)** - Command-line fuzzy finder
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** - Fast grep alternative
- **[fd](https://github.com/sharkdp/fd)** - Fast find alternative
- **[lazygit](https://github.com/jesseduffield/lazygit)** - Git TUI
- **[gitui](https://github.com/extrawurst/gitui)** - Git TUI (alternative)

## 🚀 Installation

### Quick Start

```bash
# Backup your existing configs
mv ~/.config ~/.config.backup

# Clone this repository
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/.config

# Install Fish shell (if not installed)
# macOS
brew install fish

# Linux
sudo apt install fish  # Debian/Ubuntu
sudo dnf install fish  # Fedora

# Set Fish as default shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

# Install Fisher (Fish plugin manager)
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"

# Install Fish plugins (if you have fish_plugins file)
fish -c "fisher update"

# For Neovim setup, see nvim/README.md
```

### Individual Component Installation

You can also install individual configurations:

```bash
# Just Neovim
git clone https://github.com/YOUR_USERNAME/dotfiles.git /tmp/dotfiles
cp -r /tmp/dotfiles/nvim ~/.config/

# Just Fish
cp -r /tmp/dotfiles/fish ~/.config/

# Just Tmux
cp -r /tmp/dotfiles/tmux ~/.config/
```

## 📁 Structure

```
~/.config/
├── alacritty/          # Alacritty terminal config
├── fish/               # Fish shell config
│   ├── config.fish    # Main config
│   ├── config-osx.fish
│   ├── config-linux.fish
│   └── functions/     # Custom functions
├── ghostty/           # Ghostty terminal config
├── gitui/             # GitUI config
├── kitty/             # Kitty terminal config
├── nvim/              # Neovim config (LazyVim)
│   ├── init.lua
│   ├── lua/
│   └── README.md      # Detailed Neovim docs
└── tmux/              # Tmux config
    ├── tmux.conf
    ├── statusline.conf
    └── macos.conf
```

## ⌨️ Key Features

### Fish Shell Aliases

```fish
g          # git
vim        # nvim (if available)
ll         # eza -l -g --icons (if eza installed)
la         # ls -A
lla        # ll -A
```

### Tmux Key Bindings

| Key | Action |
|-----|--------|
| `Ctrl-b r` | Reload tmux config |
| `Ctrl-b h/j/k/l` | Navigate panes (vim-style) |
| `Ctrl-b Ctrl-h/j/k/l` | Resize panes |
| `Ctrl-Shift-Left/Right` | Move window left/right |

### Neovim

See [nvim/README.md](nvim/README.md) for comprehensive Neovim documentation.

## 🎨 Customization

### Fish Shell

Create a `~/.config/fish/config-local.fish` file for machine-specific configurations:

```fish
# This file is gitignored
set -gx MY_SECRET_TOKEN "your-token"
set -gx PATH /custom/path $PATH
```

### Tmux

Edit `~/.config/tmux/tmux.conf` or create OS-specific overrides in `macos.conf`.

### Terminal Colors

All terminal configs use similar color schemes. To change:

1. **Alacritty**: Edit `alacritty/alacritty.toml` colors section
2. **Kitty**: Edit `kitty/kitty.conf` color scheme
3. **Neovim**: See `nvim/lua/config/lazy.lua` for colorscheme setting

## 🔧 Troubleshooting

### Fish shell not working

```bash
# Make sure fish is in /etc/shells
cat /etc/shells | grep fish

# If not, add it
which fish | sudo tee -a /etc/shells
```

### Fonts not displaying correctly

Install a Nerd Font:

```bash
# macOS
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Linux
# Download from https://www.nerdfonts.com/
```

### Tmux colors not working

```bash
# Make sure your terminal supports 256 colors
echo $TERM  # Should be xterm-256color or similar

# Test colors
curl -s https://gist.githubusercontent.com/lifepillar/09a44b8cf0f9397465614e622979107f/raw/24-bit-color.sh | bash
```

### Neovim issues

See [nvim/README.md](nvim/README.md) troubleshooting section.

## 🔄 Updating

```bash
cd ~/.config
git pull origin main

# Update Fish plugins
fish -c "fisher update"

# Update Neovim plugins
nvim --headless "+Lazy! sync" +qa
```

## 🤝 Contributing

Feel free to:
- Open issues for bugs or suggestions
- Submit PRs for improvements
- Fork and customize for your own use

## 📝 Notes

### What's NOT Included

For security and privacy, the following are excluded (via `.gitignore`):

- Cloud provider configs (gcloud, firebase, stripe, solana)
- API keys and tokens (github-copilot, sanity)
- Work/company specific configs
- Personal credentials
- Cache and temporary files

### OS Compatibility

- **Primary**: macOS (Apple Silicon & Intel)
- **Secondary**: Linux (Ubuntu, Fedora, Arch)
- **Limited**: Windows (via WSL2)

Most configurations work cross-platform, with OS-specific settings in separate files.

## 📚 Resources

- [Fish Shell Documentation](https://fishshell.com/docs/current/)
- [Tmux Documentation](https://github.com/tmux/tmux/wiki)
- [Neovim Documentation](https://neovim.io/doc/)
- [LazyVim Documentation](https://www.lazyvim.org/)
- [Alacritty Documentation](https://alacritty.org/)

## 🙏 Credits

Inspired by:
- [craftzdog's dotfiles](https://github.com/craftzdog/dotfiles-public)
- [LazyVim](https://github.com/LazyVim/LazyVim)
- Various dotfiles repos from the community

## 📄 License

MIT License - Feel free to use and modify for your own needs.

---

**Made with ❤️ for the terminal**

