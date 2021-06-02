export PROMPT_EOL_MARK=''

# For pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden | rg -v "__"'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_DEFAULT_OPTS="--border"

# SPACE_SHIP
# export SPACESHIP_TIME_SHOW=true
# export SPACESHIP_TIME_FORMAT='%T'
export SPACESHIP_DOCKER_SHOW=false

# JAVA
export JAVA_HOME=/usr/lib/jvm/java-15-openjdk
export PATH=$PATH:$JAVA_HOME/bin

# Ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# LESS
export LESS='-SRXF'

# EDITOR
export EDITOR=nvim
export VISUAL=nvim

# Modern vim book
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim

# Add GOBIN to path
export PATH=$PATH:~/go/bin
