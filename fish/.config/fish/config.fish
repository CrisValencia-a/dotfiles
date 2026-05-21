# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end

# --- Rutas y Entorno ---
set -U fish_user_paths /home/linuxbrew/.linuxbrew/bin $fish_user_paths

# opencode
fish_add_path /home/cris/.opencode/bin

# --- SSH agent ---
if not set -q SSH_AUTH_SOCK
  eval (ssh-agent -c) > /dev/null
end

#tmux alias
alias tmns='tmux new-session -d -s'
alias tmas='tmux attach-session -t'
alias tmks='tmux kill-session -t'

# --- Aliases de Eza (Reemplazo de ls) ---
if type -q eza
    # Configuración inspirada en Kanagawa-dragon
    alias ls='eza --icons --color=always --group-directories-first --git'
    alias ll='eza -lh --icons --group-directories-first --git'
    alias la='eza -a --icons --group-directories-first'
    alias lt='eza --tree --level=2 --icons'
    alias l='eza -F'
else
    # Fallback por si acaso
    alias ll='ls -alF'
    alias la='ls -A'
end

# --- Otros Aliases ---
alias grep='grep --color=auto'

# Comandos que solo deben correr en sesiones interactivas
if status is-interactive
    # Aquí puedes poner saludos o configuraciones visuales extra
end

# init starship
starship init fish | source
