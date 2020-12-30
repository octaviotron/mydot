apt update
apt install vim links2 gpm git net-tools whois bind9utils dnsutils nmap htop

echo "set tabstop=4 shiftwidth=4 noexpandtab" >> /etc/vim/vimrc
sed -i -e 's/set mouse.*/set mouse-=a/' /usr/share/vim/vim81/defaults.vim
sed -i -e 's/filetype plugin indent.*/filetype plugin indent off/' /usr/share/vim/vim81/defaults.vim

export HISTTIMEFORMAT="%d/%m/%y %T "
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> /etc/profile
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> /root/.bashrc
echo 'export PS1="\[\033[1;0m\][\[\033[1;31m\]\u\[\033[1;0m\]@\[\033[1;34m\]\h\[\033[1;0m\]] \[\033[1;32m\]\w\[\033[1;0m\]\n# \[\033[0m\]"' >> /root/.bashrc
echo "alias ll='ls \$LS_OPTIONS -lh'" >> /etc/profile 
source .bashrc

# TODO: cambiar por "sed -i -e"
cat <<EOF >> /tmp/profile
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls \$LS_OPTIONS'
 alias ll='ls \$LS_OPTIONS -lh'
 export HISTTIMEFORMAT="%d/%m/%y %T "
EOF

cat <<EOF >> .bashrc
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls \$LS_OPTIONS'
 alias ll='ls \$LS_OPTIONS -lh'
 export HISTTIMEFORMAT="%d/%m/%y %T "
EOF
