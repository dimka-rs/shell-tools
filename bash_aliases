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
alias	up='grep Awake /var/log/pm-suspend.log|tail -n 1'

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
## telnet
alias t1='sudo arp -d 192.168.1.1 ; telnet 192.168.1.1'
alias t2='sudo arp -d 192.168.1.2 ; telnet 192.168.1.2'
alias t3='sudo arp -d 192.168.1.3 ; telnet 192.168.1.3'
alias t4='sudo arp -d 192.168.1.4 ; telnet 192.168.1.4'
alias t5='sudo arp -d 192.168.1.5 ; telnet 192.168.1.5'
alias t6='sudo arp -d 192.168.1.6 ; telnet 192.168.1.6'
alias t7='sudo arp -d 192.168.1.7 ; telnet 192.168.1.7'
alias t8='sudo arp -d 192.168.1.8 ; telnet 192.168.1.8'
alias t9='sudo arp -d 192.168.1.9 ; telnet 192.168.1.9'
## ping
alias p1='sudo arp -d 192.168.1.1 ; ping 192.168.1.1'
alias p2='sudo arp -d 192.168.1.2 ; ping 192.168.1.2'
alias p3='sudo arp -d 192.168.1.3 ; ping 192.168.1.3'
alias p4='sudo arp -d 192.168.1.4 ; ping 192.168.1.4'
alias p5='sudo arp -d 192.168.1.5 ; ping 192.168.1.5'
alias p6='sudo arp -d 192.168.1.6 ; ping 192.168.1.6'
alias p7='sudo arp -d 192.168.1.7 ; ping 192.168.1.7'
alias p8='sudo arp -d 192.168.1.8 ; ping 192.168.1.8'
alias p9='sudo arp -d 192.168.1.9 ; ping 192.168.1.9'

