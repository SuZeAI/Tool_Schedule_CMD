while getopts c:t: input
do 
    case "${input}" in
        c) command=${OPTARG};;
        t) time=${OPTARG};;
    esac
done

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
SCRIPT_PATH="$SCRIPT_DIR/$(basename "${BASH_SOURCE[0]}")"
SCRIPT_PATH_PWD=$(pwd)

python "$SCRIPT_DIR/core/schedule.py" "$command" "$time" "$SCRIPT_PATH" "$SCRIPT_PATH_PWD"
