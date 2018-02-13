PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;35m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
## apt
alias dq='dpkg-query -W --showformat="\${Installed-Size;10}\t\${Package}\n" | sort -k1,1n'
alias auu="sudo aptitude update ; sudo aptitude dist-upgrade ; sudo aptitude autoclean ; aptitude search '~N' ; sudo aptitude forget-new; sudo apt autoremove"
## shell
alias cd..='cd ..'
alias  cdo="cd $OLDPWD"
alias  cdh='cd ~/'
alias   la='ls -A'
alias    l='ls -CF'
alias   ll='ls -alF'
alias   pa='ps -Af'
alias   pg='ps auxw|grep'
## git
alias gb='git branch -v'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log --decorate=short'
alias gp='git pull --rebase'
alias gpod='git push origin devel'
alias gpom='git push origin master'
alias gs='git status'

