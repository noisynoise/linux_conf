autoload -Uz compinit promptinit chpwd_recent_dirs cdr add-zsh-hook
compinit
promptinit
#prompt fade

zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

zstyle ':completion:*:*:cdr:*:*' menu selection

zstyle ':completion:*' rehash true

plugins=(
  git
  bundler
  dotenv
  macos
  rake
  rbenv
  ruby
)

# ZSH_THEME="agnoster"
prompt off

powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

bindkey "^[[3~" delete-char
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
