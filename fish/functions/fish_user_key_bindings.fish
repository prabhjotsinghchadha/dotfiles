function fish_user_key_bindings
  # peco
  bind \ch peco_select_history # Bind for peco select history to Ctrl+H
  bind \cf peco_change_directory # Bind for peco change directory to Ctrl+F

  # vim-like
  bind \cl forward-char

  # prevent iterm2 from closing when typing Ctrl-D (EOF)
  bind \cd delete-char
end

fzf_key_bindings
