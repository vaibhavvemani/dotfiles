# ---------------------------
# Minimal ZSH Init
# ---------------------------

# Silence "Last login" message (handled via hushlogin file)
# Ensure this is run once in terminal:
# touch ~/.hushlogin

# ---------------------------
# Starship Prompt FIRST
# ---------------------------
eval "$(starship init zsh)"

# ---------------------------
# Zoxide
# ---------------------------
eval "$(zoxide init zsh)"

# ---------------------------
# NVM (Node Version Manager)
# ---------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# ---------------------------
# PNPM
# ---------------------------
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# ---------------------------
# Bun
# ---------------------------
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# ---------------------------
# Conda
# ---------------------------
# Prevent Conda from modifying prompt
export CONDA_CHANGEPS1=false

# Conda init (slow-ish, so keep low in file)
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
