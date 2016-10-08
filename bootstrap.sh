base_powerline_path="/home/vagrant/.local/lib/python2.7/site-packages/powerline/bindings"

# EXECUTABLES FOR PIP LOCAL
mkdir -p /home/vagrant/.local

touch /home/vagrant/.zshrc

ensure_line(){
    line=$1
    file=$2
    if ! grep -Fxq "$line" $file
    then
        echo "$line" >> $file
    fi
}

# POWERLINE VIM
touch /home/vagrant/.vimrc
ensure_line "source $base_powerline_path/vim/plugin/powerline.vim" /home/vagrant/.vimrc

# POWERLINE TMUX
touch /home/vagrant/.tmux.conf
ensure_line "source $base_powerline_path/tmux/powerline.conf" /home/vagrant/.tmux.conf
ensure_line "set -g status-interval 2" /home/vagrant/.tmux.conf
ensure_line "set -g status-right '#(powerline tmux right)'" /home/vagrant/.tmux.conf

# POWERLINE ZSH
touch /home/vagrant/.zshrc
ensure_line 'export PATH=/home/vagrant/.local/bin/:$PATH' /home/vagrant/.zshrc
ensure_line 'export TERM=xterm-256color' /home/vagrant/.zshrc
ensure_line "source $base_powerline_path/zsh/powerline.zsh" /home/vagrant/.zshrc

# POWERLINE
pip install --user powerline-status

#touch /home/vagrant/.zshrc
#line="source $base_powerline_path/zsh/powerline.zsh"
#if ! grep -Fxq "$line" /home/vagrant/.zshrc
#then
#    echo "$line" >> /home/vagrant/.zshrc
#fi


# POWERLINE TMUX
#touch /home/vagrant/.tmux.conf
#line="source $base_powerline_path/tmux/powerline.conf"
#if ! grep -Fxq "$line" /home/vagrant/.tmux.conf
#then
#    echo "$line" >> /home/vagrant/.tmux.conf
#fi

# POWERLINE VIM
#touch /home/vagrant/.vimrc
#line="source $base_powerline_path/vim/plugin/powerline.vim"
#if ! grep -Fxq "$line" /home/vagrant/.vimrc
#then
#    echo "$line" >> /home/vagrant/.vimrc
#fi

sudo locale-gen en_GB
sudo locale-gen en_GB.UTF-8
sudo update-locale


