# ohmyzsh opts
ZSH_THEME="arrow"  # agnoster
DISABLE_AUTO_UPDATE="true"


# plugins
plugins=(
  colored-man-pages
  git
  extract
  node
  z
)


# stuffs
source ~/.zsh/aliases
source ~/.zsh/functions
source ~/.zsh/paths

source ${NVM_HOME}/nvm.sh
source ${ZSH}/oh-my-zsh.sh

# autoload -U promptinit; promptinit
# autoload -U add-zsh-hook
# add-zsh-hook chpwd load-nvmrc
load-nvmrc



# Additional Custom Configs
unsetopt nomatch
foreach file (`echo ~/.zshrc-*`)
    if [[ -a $file ]]; then
        source $file
    fi
end
setopt nomatch
