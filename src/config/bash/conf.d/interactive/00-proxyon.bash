proxyon() {
    case $1 in
    "--help")
        echo "Supported types: glider, clash, clash_verge, clash_verge_rev, clash_rev, v2raya, v2raya_global, <addr:port>"
        ;;
    "tor")
        http_url="http://127.0.0.1:9050"
        socks_url="socks://127.0.0.1:9050"
        ;;
    "glider")
        http_url="http://127.0.0.1:8443"
        socks_url="socks://127.0.0.1:8443"
        ;;
    "clash" | "clash_verge")
        http_url='http://127.0.0.1:7890'
        socks_url='socks://127.0.0.1:7891'
        ;;
    "clash_verge_rev" | "clash_rev")
        http_url='http://127.0.0.1:7897'
        socks_url='socks://127.0.0.1:7898'
        ;;
    "v2raya")
        http_url='http://127.0.0.1:20172'
        socks_url='socks://127.0.0.1:20170'
        ;;
    "v2raya_global")
        http_url='http://127.0.0.1:20171'
        socks_url='socks://127.0.0.1:20170'
        ;;
    *)
        if [[ -z "$1" ]]; then
            echo "Usage: proxyon <type>"
            return 1
        fi
        http_url="http://$1"
        socks_url="socks://$1"
        ;;
    esac

    export HTTP_PROXY="$http_url"
    export HTTPS_PROXY="$http_url"
    export FTP_PROXY="$http_url"
    export SOCKS_PROXY="$socks_url"
    export NO_PROXY='localhost,127.0.0.1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,172.29.0.0/16,::1'
    return 0
}
