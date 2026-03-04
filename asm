if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <filename>" >&2
    exit 1
fi

file="$1"

if [[ ! -f "$file" ]]; then
    echo "Error: '$file' is not an exisitng regular file" >&2
    exit 1
fi

java -jar ../rars1_6.jar nc $file
