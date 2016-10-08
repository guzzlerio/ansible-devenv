# EXECUTABLES FOR PIP LOCAL
mkdir -p /home/vagrant/.local

su -c "touch /home/vagrant/.zshrc" vagrant

line="export PATH=/home/vagrant/.local/bin/:$PATH"
if ! grep -Fxq "$line" /home/vagrant/.zshrc
then
    echo "$line" >> /home/vagrant/.zshrc
fi

# POWERLINE
su -c "pip install --user powerline-status" vagrant

base_powerline_path="/home/vagrant/.local/lib/python2.7/site-packages/powerline/bindings"

# POWERLINE ZSH
su -c "touch /home/vagrant/.zshrc" vagrant
line="source $base_powerline_path/zsh/powerline.zsh"
if ! grep -Fxq "$line" /home/vagrant/.zshrc
then
    echo "$line" >> /home/vagrant/.zshrc
fi

# POWERLINE TMUX
su -c "touch /home/vagrant/.tmux.conf"
line="source $base_powerline_path/tmux/powerline.conf"
if ! grep -Fxq "$line" /home/vagrant/.tmux.conf
then
    echo "$line" >> /home/vagrant/.tmux.conf
fi

# POWERLINE VIM
su -c "touch /home/vagrant/.vimrc"
line="source $base_powerline_path/vim/plugin/powerline.vim"
if ! grep -Fxq "$line" /home/vagrant/.vimrc
then
    echo "$line" >> /home/vagrant/.vimrc
fi

sudo chsh vagrant --shell $(which zsh)
