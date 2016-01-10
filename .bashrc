# Sexy git bash prompt

# Prompt colors (TODO: properly use git-prompt-colors.sh)
BoldWhite="$(tput bold)$(tput setaf 7)"
BoldCyan="$(tput bold)$(tput setaf 6)"
Yellow="$(tput setaf 2)"
ResetColor="\[\033[0m\]"

# Additional prompt data
Username="\u"
Hostname="\h"
PathShort="\w"

# Bash Git Prompt customization
GIT_PROMPT_START="${BoldBlue}${Username}${ResetColor}"
GIT_PROMPT_START="${GIT_PROMPT_START}${BoldWhite}@${ResetColor}"
GIT_PROMPT_START="${GIT_PROMPT_START}${BoldCyan}${Hostname}${ResetColor}"
GIT_PROMPT_START="${GIT_PROMPT_START}${BoldWhite} in ${ResetColor}"
GIT_PROMPT_START="${GIT_PROMPT_START}${Yellow}${PathShort}${ResetColor}"
GIT_PROMPT_END=" \n${ResetColor}$ "

#GIT_PROMPT_ONLY_IN_REPO=1

GIT_PROMPT_SYMBOLS_BEHIND="↓"
GIT_PROMPT_SYMBOLS_AHEAD="↑"
GIT_PROMPT_CONFLICTS="${Red}✖"
GIT_PROMPT_CHANGED="${Blue}✚"

# Go go, bash git prompt!
#TODO: dotfiles should be dynamically determined...
source ~/dotfiles/deps/bash-git-prompt/gitprompt.sh


# Add ~/bin to PATH
#TODO: Only if it isn't there already...
PATH=$PATH:~/bin
