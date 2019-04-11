# fish like return
function accept-line() {
    buf=${BUFFER// /}
    if [[ $#buf == 0 ]]; then
        BUFFER=''
        zle reset-prompt
    else
        zle .accept-line
    fi
}
zle -N accept-line
