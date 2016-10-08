# SHELL
apt-get -y vim-nox
apt-get -y autoremove
apt-get -y install zsh
apt-get -y install tmux
apt-get -y install silversearcher-ag
apt-get -y install curl 
apt-get -y install git 
apt-get -y install make 
apt-get -y install binutils 
apt-get -y install bison 
apt-get -y install gcc 
apt-get -y install build-essential
apt-get -y install exuberant-ctags 
apt-get -y install cmake 
apt-get -y install libevent-dev 
apt-get -y install libncurses5-dev

#----------------------------------------
# TMUX FROM SOURCE
#
#(mkdir -p /tmp/tmux \
#    && cd /tmp/tmux \
#    && wget https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz \
#    && tar -zxf tmux-2.1.tar.gz \
#    && cd tmux-2.1 \
#    && ./configure \
#    && make \
#    && make install)
#
#----------------------------------------

# PYTHON
apt-get -y install python-pip

# SHELL
chsh vagrant --shell $(which zsh)
