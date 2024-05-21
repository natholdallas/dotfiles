function proxy_off
    set -e http_proxy
    set -e https_proxy
    set -e socks_proxy
    set -e no_proxy
end
