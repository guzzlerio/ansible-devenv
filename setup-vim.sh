mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git_get(){
    fullfile=$1
    filename=$(basename "$fullfile")
    filename=$(echo ${filename/.git/})
    
    if [ -d "$filename" ]; then 
        (cd $filename && git pull) 
    else 
        git clone $fullfile;
    fi
}

(cd ~/.vim/bundle \
&& git_get https://github.com/nanotech/jellybeans.vim.git  \
&& git_get https://github.com/scrooloose/nerdtree.git  \
&& git_get https://github.com/fatih/vim-go.git \
&& git_get https://github.com/Shougo/neocomplete.vim.git \
&& echo "Plugins cloned!"
)

export GOPATH=/home/vagrant/go

data=$(curl -s https://raw.githubusercontent.com/fatih/vim-go/master/plugin/go.vim | grep -P '\\\s\"([a-zA-Z./]+)\"' | grep -oP "[a-zA-Z./]+")

for i in $data
do
    /usr/local/go/bin/go get $i
done

