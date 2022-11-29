export GOPATH=/home/hack3r/go-workspace
export GOROOT=/usr/local/go
PATH=$PATH:$GOROOT/bin/:$GOPATH/bin

function crtsh() {
curl -s "https://crt.sh/?q=%.$1&output=json" | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u
}
