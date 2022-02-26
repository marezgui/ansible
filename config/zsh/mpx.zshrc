export MPX_DIRECTORY=~/mpx
export SCRIPTS_DIRECTORY=${MPX_DIRECTORY}/dev-tools/kubectl

# kubernetes auto completion
source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k

alias mpx="cd ${MPX_DIRECTORY}"
alias dev-tools="cd ${MPX_DIRECTORY}/dev-tools"
alias cluster-dev="cd ${MPX_DIRECTORY}/cluster-dev"
alias front="cd ${MPX_DIRECTORY}/front"
alias ci="cd ${MPX_DIRECTORY}/release-management"

alias ysgql="yarn start:graphql"
alias ysp="yarn start:playground"
alias ysf="yarn start:front --ignore @monoprix/playground"
alias yc="yarn clean"
alias yyy="yarn clean && yarn cache clean && yarn"

alias kpf=$SCRIPTS_DIRECTORY/'kubectlPortForward.sh'
alias kmongopf=$SCRIPTS_DIRECTORY/'kubectlPortForwardMongo.sh'
alias klog=$SCRIPTS_DIRECTORY/'kubectlLog.sh'
alias klogs=$SCRIPTS_DIRECTORY/'kubectlLogs.sh'
alias kssh=$SCRIPTS_DIRECTORY/'kubectlSsh.sh'

alias kgpf=$SCRIPTS_DIRECTORY/'pf-graphql.sh'
alias kepf=$SCRIPTS_DIRECTORY/'pf-export.sh'
alias kbpf=$SCRIPTS_DIRECTORY/'pf-bo.sh'
alias kupf=$SCRIPTS_DIRECTORY/'pf-utils.sh'
alias kdpf=$SCRIPTS_DIRECTORY/'pf-digest.sh'
alias kpepf=$SCRIPTS_DIRECTORY/'pf-price-engine.sh'
alias kpspf=$SCRIPTS_DIRECTORY/'pf-ps.sh'

alias knd1='k config use-context ninja-preprod && k config set-context $(k config current-context) --namespace=dev1'
alias knd2='k config use-context ninja-preprod && k config set-context $(k config current-context) --namespace=dev2'
alias knd3='k config use-context ninja-preprod && k config set-context $(k config current-context) --namespace=dev3'
alias knd4a='k config use-context ninja-preprod && k config set-context $(k config current-context) --namespace=dev4a'
alias knd4b='k config use-context ninja-preprod && k config set-context $(k config current-context) --namespace=dev4b'
alias knd4c='k config use-context ninja-preprod && k config set-context $(k config current-context) --namespace=dev4c'
alias knpp='k config use-context ninja-preprod && k config set-context $(k config current-context) --namespace=ninja'
alias knp='k config use-context ninja-prod && k config set-context $(k config current-context) --namespace=ninja'

alias kk='killall kubectl'

alias kgn="k config get-contexts --no-headers | grep '*' | grep -Eo '\S+$'"
alias kgc='k config current-context'