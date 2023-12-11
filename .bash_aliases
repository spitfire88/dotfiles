# Shortcuts
alias sapt='sudo apt'
alias gpt='cd $GOPATH'
alias ebash='vim ~/.bashrc'
alias ebalias='vim ~/.bash_aliases'
alias rbash='source ~/.bashrc'
alias gs='git status'
alias ga='git add'
alias gc='git commit -s'
alias gca='git commit -s --amend'
alias glol='git log --oneline --decorate'
alias gl='git log'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'
alias grv='git remote -v'
alias gf='git fetch'
alias greb='git rebase'
alias grebi='git rebase -i'
alias glno='git log --name-only'
alias swpoff='sudo swapoff -a'
alias p='pwd'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cp='cp -R'
alias gsi='git status --ignored'
alias gcl='git clone'
alias gra='git remote add'
alias grst='git reset --hard'
alias gshow='git show'
alias grebc='git rebase --continue'
alias greba='git rebase --abort'
alias gd='git diff'
alias glp='git log -p'
alias gcpick='git cherry-pick'
alias gcpickc='git cherry-pick --continue'
alias gcpicka='git cherry-pick --abort'
alias vi='vim -O'
alias vim='vim -O'
alias tl='tmux list-sessions'
alias tn='tmux new -s'
alias ta='tmux attach'
alias g='grep --exclude-dir=*out --exclude=tags -nIr'
alias f='find . -name'
alias cts='ctags-exuberant -R *'
alias rmr='rm -rf'
alias t='htop'
alias c='clear'

## k8s
alias k="kubectl"
alias kedit="kubectl edit"
alias krs='kubectl get replicaset'
alias kds='kubectl get daemonset'
alias kns='kubectl get namespaces'
alias kp="kubectl get po"
alias kpw="kubectl get po --watch"
alias kn="kubectl get no"
alias ksvc="kubectl get svc"
alias ksvcw="kubectl get svc -o wide --all-namespaces"
alias kdep="kubectl get deployment"
alias kpvc="kubectl get pvc"
alias kall="kubectl get po --all-namespaces"
alias kallw="kubectl get po --all-namespaces --watch"
alias kafv="kubectl --v=5 apply -f"
alias kcfv="kubectl --v=5 create -f"
alias kd="kubectl describe"
alias kdel="kubectl delete -f"
alias kep="kubectl get ep"
alias king="kubectl get ingress"
alias kar='kubectl api-resources'
alias ksns='kubectl config set-context --current'
alias ksnsd='kubectl config set-context --current --namespace=default'

# to remember
#git remote add rghetia https://github.com/rghetia/microservices-demo.git

# Proxied Commands
#alias go='https_proxy=https://proxy-us.intel.com:911 go'
#alias curl='curl --proxy http://proxy-us.intel.com:911'

# CAPI
alias tas="tcf acquire --static"
alias tlv="tcf ls -v"
alias tlvg="tcf ls -v | grep "
alias tpc="tcf power-cycle"
alias tg="tcf get"
alias tpl="tcf power-ls"
alias tr="tcf release"
# tcf tunnel-add fl31ca105gs1503 22 tcp 192.7.4.86
alias tta="tcf tunnel-add"
alias ttl="tcf tunnel-ls"

# x11 forwarding, laptop IP
export DISPLAY='10.212.190.91:0.0'

# build/test servers
export BSERV='salvares@10.54.77.34'
