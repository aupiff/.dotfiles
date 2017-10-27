PATH="/Users/aupiff/3-tools/stack:$PATH"
PATH="/Users/aupiff/bin:$PATH"
PATH="/Users/aupiff/.local/bin:$PATH"
PATH="/Users/aupiff/3-tools/mutable_node_modules/bin:$PATH"

function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]λ"
    local __last_color="\[\033[00m\]"
    export PS1="$__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color\n"
}
color_my_prompt

eval "$(stack --bash-completion-script "$(which stack)")"


export PATH="/usr/local/sbin:$PATH"
if [ -e /Users/aupiff/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/aupiff/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export PATH="$HOME/.cargo/bin:$PATH"
export LEDGER_FILE=~/4-ledger/2017.journal

alias grep="grep -i --color=auto"
alias ghc="stack ghc"

# OPAM configuration
. /Users/aupiff/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
