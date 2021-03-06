export FZF_BASE=/usr/bin/fzf

source /usr/share/zsh/share/antigen.zsh

export QT_QPA_PLATFORMTHEME=qt5ct

PATH=$PATH:$USER_PATH/.cargo/bin
PATH=$PATH:$USER_PATH/.gem/ruby/2.5.0/gems/colorls-1.1.1/exe

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
export FZF_DEFAULT_OPTS='
    --color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

export ZSH_AUTOSUGGEST_USE_ASYNC=1

# Typewritten Settings
export TYPEWRITTEN_CURSOR="beam"
export TYPEWRITTEN_GIT_RELATIVE_PATH=true
export TYPEWRITTEN_COLOR_MAPPINGS="primary:red;secondary:red;accent:white;foreground:white"

if [ "$(hostname)" = "maxpc" ] || [ "$(hostname)" = "arch-desktop" ]; then
    export TYPEWRITTEN_PROMPT_LAYOUT="singleline"
else
    export TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
fi

if [ "$(whoami)" = "root" ]; then
    export TYPEWRITTEN_SYMBOL="#"
fi

antigen use oh-my-zsh

antigen bundle 'wfxr/forgit'
antigen bundle 'zdharma/fast-syntax-highlighting'
antigen bundle 'zsh-users/zsh-autosuggestions'
antigen bundle 'joshskidmore/zsh-fzf-history-search'
antigen bundle 'reobin/typewritten'

antigen theme typewritten
antigen apply

source ~/.sources/aliases.zsh
source ~/.sources/shortcuts.zsh
source ~/.sources/ssh-agent.zsh

export PATH=$PATH:~/.scripts
export EDITOR=/usr/bin/vim

[[ -f ~/.rclocal ]] && source ~/.rclocal
