# Created by newuser for 5.9
# -------------------------------
# 基础环境
# -------------------------------
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt APPEND_HISTORY       # 历史追加
setopt HIST_IGNORE_DUPS     # 忽略重复历史
setopt AUTO_CD              # 直接输入目录自动 cd
setopt NO_BEEP              # 禁止提示音
setopt PROMPT_SUBST         # 支持 prompt 中的命令替换

export EDITOR=nvim

# -------------------------------
# 基础提示符
# -------------------------------
autoload -U colors && colors
setopt PROMPT_CR
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f$ '

# -------------------------------
# 自动补全
# -------------------------------
autoload -U compinit
compinit

# -------------------------------
# 常用别名
# -------------------------------
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias gd='git diff'
alias gp="git push"
alias gco='git checkout'
alias lg="lazygit"


# -------------------------------
# 插件加载路径 (你需要先 clone)
# -------------------------------
# 在你的 home 下创建插件目录：
# mkdir -p ~/.zsh/plugins
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/plugins/zsh-syntax-highlighting

# -------------------------------
# 加载 插件
# -------------------------------
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/zsh-completions/zsh-completions.plugin.zsh
source ~/.zsh/plugins/zsh-fzf-history-search/zsh-fzf-history-search.zsh


# -------------------------------
# 自动加载自定义函数
# -------------------------------
if [ -d "$HOME/.zsh/functions" ]; then
  for f in $HOME/.zsh/functions/*; do
    source $f
  done
fi


export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

