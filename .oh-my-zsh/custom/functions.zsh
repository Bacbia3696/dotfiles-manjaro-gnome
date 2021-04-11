function pe() {
    if [ "$#" -eq 0 ]
    then
        pyenv shell --unset
    else
        pyenv shell $1
    fi
}

function gdp() {
    message='update config'
    if [ "$#" -eq 1 ]; then
        message=$1
    fi
    gd au
    gd cm $message
    gd p
}
