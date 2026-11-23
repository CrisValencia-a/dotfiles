# ====================== Environment & PATH ======================
typeset -U PATH
export PATH="$HOME/.local/bin:$PATH"

# Ruta para opencode (Migrado de Fish)
export PATH="/home/cris/.opencode/bin:$PATH"

# Asegurar que Homebrew esté activo
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Oh My Zsh config
export ZSH="$HOME/.oh-my-zsh"
export TMUX_CONF="$HOME/.config/tmux/tmux.conf"

# ====================== SSH Agent  ======================
# Inicia el agente SSH automáticamente si no está corriendo
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)" > /dev/null
fi

# ====================== Oh My Zsh ======================
plugins=(
    git 
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

# ====================== Editors ======================
export EDITOR=nvim
export VISUAL=nvim

# ====================== FNM (Node.js) ======================
eval "$(fnm env --use-on-cd --shell zsh)"

# ================ Initializers ==================
# zoxide (Navegación inteligente)
eval "$(zoxide init zsh)"

# atuin (Historial avanzado)
export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"
bindkey '^r' atuin-search-viins

# starship (Prompt)
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# ================= ALIASES ===================
# Generales
alias c="clear"
alias e="exit"
alias vim="nvim"
alias grep='grep --color=auto'

# Eza (Reemplazo de ls)
if command -v eza &> /dev/null; then
    alias ls='eza --icons --color=always --group-directories-first --git'
    alias ll='eza -lh --icons --group-directories-first --git'
    alias la='eza -a --icons --group-directories-first'
    alias lt='eza --tree --level=2 --icons'
    alias l='eza -F'
else
    alias ll='ls -alF'
    alias la='ls -A'
fi

# Tmux (Combinación de ambas configs)
alias tmux="tmux -f $TMUX_CONF"
alias a="tmux attach"
alias tmns='tmux new-session -d -s'
alias tmas='tmux attach-session -t'
alias tmks='tmux kill-session -t'

# Git & GitHub
alias gt="git"
alias ga="git add ."
alias gs="git status -s"
alias gc='git commit -m'
alias glog='git log --oneline --graph --all'
alias gh-create='gh repo create --private --source=. --remote=origin && git push -u --all && gh browse'

# Perfiles de Neovim
# alias nvim-scratch="NVIM_APPNAME=nvim-scratch nvim"
# alias nvimn="NVIM_APPNAME=nvim-nightly $HOME/.local/nvim-nightly/bin/nvim"

# Lazygit
alias lg="lazygit"

# pnpm
export PNPM_HOME="/home/cris/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
