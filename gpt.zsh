function urlencode() {
    python3 -c "import sys, urllib.parse; print(urllib.parse.quote(sys.argv[1]))" "$1"
}

function gpt() {
    local query="$*"
    local encoded_query=$(urlencode "$query")
    local url="https://chat.openai.com/?q=$encoded_query"
    
    if [[ "$OSTYPE" == "darwin"* ]]; then
        open "$url"
    else
        xdg-open "$url"
    fi
}
