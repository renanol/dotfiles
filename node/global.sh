source common/functions.sh

#nvm
if which nvm &> /dev/null; then
    msg_checking "nvm"
else
    msg_install "nvm" "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash"
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
    nvm requirements
    echo "OK"
fi

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "npm i -g n"
    npm install -g n
    sudo n stable
    echo "OK"
fi

# yarn
if which yarn &> /dev/null; then
    msg_checking "yarn"
else
    msg_install "yarn" "npm i -g yarn"
    npm i -g yarn
    echo "OK"
fi