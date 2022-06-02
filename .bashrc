export PATH="$PATH:$HOME/go/bin"
source ~/.bash_profile

function crtsh() {
        curl -s "https://crt.sh/?q=$1&output=json" | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u
}

function quickprobe() {
        httpx -silent -title -status-code -follow-redirects -tech-detect
}
