#!/bin/bash
iwconfig 2>&1 | grep UECWireless > /dev/null
if [ $? -eq 0 ]; then
    export http_proxy="http://proxy.uec.ac.jp:8080"
    export https_proxy="https://proxy.uec.ac.jp:8080"
    export ftp_proxy="ftp://proxy.uec.ac.jp:8080"
    export no_proxy="127.0.0.1,localhost"
    #大文字環境変数に対応
    export HTTP_PROXY=$http_proxy
    export HTTPS_PROXY=$https_proxy
    export FTP_PROXY=$ftp_proxy
    export NO_PROXY=$no_proxy
else
    unset http_proxy
    unset https_proxy
    unset ftp_proxy
    unset no_prox
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset FTP_PROXY
    unset NO_PROXY
fi
