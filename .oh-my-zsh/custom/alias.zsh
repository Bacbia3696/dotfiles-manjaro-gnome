alias q=exit
alias o="xdg-open"
alias e="nvim 2> /dev/null"
alias se=sudoedit
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gd=dotfiles
alias g=git
alias pysetup='pip install "python-language-server[yapf]"'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lst='ls --tree'
alias pyclean='find . -type d -name __pycache__ -exec rm -rf {} +'

# edit config file
alias egf="e $HOME/.gitconfig"
alias evf="e $HOME/.config/nvim/init.lua"
alias ekf="e $HOME/.config/kitty/kitty.conf"
alias eaf="e $HOME/.oh-my-zsh/custom/alias.zsh"
alias eef="e $HOME/.oh-my-zsh/custom/env.zsh"

# nmp
alias ns="npm start"
alias ni="npm install"
alias nu="npm uninstall"
alias nr="npm run"
alias nt="npm test"
alias ny="npm init -y"
alias nli="npm list --depth=0"

# cd to git root dir
alias cdg='cd $(git root)'
alias cdn="cd $HOME/.config/nvim"
alias cdo="cd $HOME/.oh-my-zsh/custom"
alias cdc="cd $HOME/.config"

