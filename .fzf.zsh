# Setup fzf
# ---------
if [[ ! "$PATH" == */home/chenyuang/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/chenyuang/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/chenyuang/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/chenyuang/.fzf/shell/key-bindings.zsh"
