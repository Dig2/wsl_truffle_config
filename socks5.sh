# source this file in ~/.bashrc

export windows_host=`cat /etc/resolv.conf | tail -n 1 | awk -F" " '{ print $2 }'`
export ALL_PROXY=http://$windows_host:1080
export HTTP_PROXY=$ALL_PROXY
export http_proxy=$ALL_PROXY
export HTTPS_PROXY=$ALL_PROXY
export https_proxy=$ALL_PROXY

if [ "`git config --global --get https.proxy`" != "http://$windows_host:1080" ]; then
    git config --global https.proxy http://$windows_host:1080
fi
