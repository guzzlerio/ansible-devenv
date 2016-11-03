{% if nvm.node_version is defined %}
node_version="{{ nvm.node_version }}"
nvm_version="{{ nvm.version | default(0.29.0)}}"

ensure_nvm(){
  if [[ ! -e ~/install-nvm.sh ]]
  then
      curl "https://raw.githubusercontent.com/creationix/nvm/v${nvm_version}/install.sh" -o ~/install-nvm.sh
      zsh ~/install-nvm.sh
  else
      echo "nvm installed OK"
  fi
}

ensure_nvm_version(){
  if [[ $(nvm current) == "v${node_version}" ]]
  then
      echo "nvm version OK"
  else
      echo "no $(nvm current) == v${node_version}"
      nvm install ${node_version}
      nvm alias default ${node_version}
  fi
}

{% endif %}
ensure_vim_plugins(){
    ok=1
    if [[ ! -e ~/.vim/bundle/YouCompleteMe ]]
    then
        echo "You need the YouCompleteMe plugin"
        echo "After install invoke './install.py --clang-completer' inside the ~/.vim/bundle/YouCompleteMe"
        ok=0
    fi

    {% if nvm.node_version is defined %}
    if [[ ! -e ~/.vim/bundle/tern_for_vim ]]
    then
        echo "You need the tern_for_vim plugin"
        echo "After install invoke 'npm install' inside the ~/.vim/bundle/tern_for_vim"
        ok=0
    fi
    {% endif %}

    if [[ $ok == 1 ]]
    then
        echo "vim plugins OK"
    fi
}

{% if nvm.node_version is defined %}
install_c_tags(){
    ensure_nvm
    ensure_nvm_version

    npm install -g jsctags
    sed -i '51i tags: [],' "~/.nvm/versions/node/v$(nvm current)/lib/node_modules/jsctags/ctags/index.js"
    jsctags **/*.js
}
{% endif %}

autoload -Uz compinit && compinit

{% if nvm.node_version is defined %}
export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="/home/vagrant/.nvm/versions/node/v$(nvm current)/bin/":$PATH
{% endif %}

source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
