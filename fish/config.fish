set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias l "ls -lah"
alias ls "ls -p -G"
alias la "ls -lAh"
alias ll "ls -lh"
alias lla "ll -A"
alias g git
alias ng 'npm init -y && git init && echo "node_modules" >> .gitignore'
alias vc 'nvim ~/.config/nvim/init.vim'
alias vp 'nvim ~/.config/nvim/plug.vim'
alias zp 'nvim ~/.zshrc'
alias fco 'nvim ~/.config/fish/config.fish'
alias zrc 'nvim ~/.zshrc'
alias exaf 'exa -allFI "node_modules|.git|coverage"'
alias xg 'exa -a --long --git --group-directories-first --no-permissions --no-user --icons -FI "node_modules|.git|coverage|.DS_Store|.vscode"'
alias exg 'exa -a --long --git --group-directories-first --no-permissions --no-user --icons -FI "node_modules|.git|coverage|.DS_Store|.vscode"'
alias exag 'exa -a --long --git --group-directories-first --no-permissions --no-user --icons -FI "node_modules|.git|coverage|.DS_Store|.vscode"'
alias exal 'exa -allI "node_modules|.git|coverage"'
alias xl 'exa -allI "node_modules|.git|coverage"'
alias exat 'exa -aTI "node_modules|.git|coverage"'
alias cfg 'cd ~/.config'
alias c 'cargo'
alias cpwd 'pwd|pbcopy'
alias vac 'nvim ~/.config/alacritty/alacritty.yml'
command -qv nvim && alias vim nvim


set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH "$HOME/.cargo/bin" $PATH
# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end
set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
test -e /Users/prabhjot/.iterm2_shell_integration.fish ; and source /Users/prabhjot/.iterm2_shell_integration.fish ; or true
