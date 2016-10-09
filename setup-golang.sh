mkdir -p /tmp/golang1.7
cd /tmp/golang1.7

wget -nc https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz
tar -xvf go1.7.linux-amd64.tar.gz
sudo mv go /usr/local 2>/dev/null

mkdir -p /home/vagrant/go

ensure_line(){
    line=$1
    file=$2
    if ! grep -Fxq "$line" $file
    then
        echo "$line" >> $file
    fi
}

ensure_line "export GOROOT=/usr/local/go" /home/vagrant/.zshrc
ensure_line "export GOPATH=/home/vagrant/go" /home/vagrant/.zshrc
ensure_line 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' /home/vagrant/.zshrc

