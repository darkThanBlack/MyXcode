#!/bin/sh

SNIPPET_NAME=CodeSnippets
SNIPPET_PATH=~/Library/Developer/Xcode/UserData

showMenu() {
    echo "1> 删除所有旧片段并更新"
    echo "0> exit"
}

showMenu
while read -p "XcodeSnippets>>>" idx; do
    if [[ ${idx} == "1" ]]; then
        $(pwd)
        $(cp -a ./${SNIPPET_NAME} ${SNIPPET_PATH})
    elif [[ ${idx} == "0" ]]; then
        echo $PATH
    else
        showMenu
    fi
done
