source common/functions.sh

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "npm install -g n"
    npm install -g n
    sudo n stable
    echo "OK"
fi

# yeoman
if which yo &> /dev/null; then
    msg_checking "yo"
else
    msg_install "yo" "npm install -g yo"
    npm install -g yo
    echo "OK"
fi
