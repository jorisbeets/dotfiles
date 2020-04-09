# Simplified dotfile for video recordings

# Load dotfiles:
for file in ~/.{bash_prompt,aliases,private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#Git auto-complete
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# Setting PATH for Python 3.7
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jorisbeets/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jorisbeets/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jorisbeets/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jorisbeets/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

