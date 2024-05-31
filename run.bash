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
if [ -z "$command" ]; then
    echo "You must have the parameter -c: command bash"
    exit 1
fi
if [ -z "$time" ]; then
    echo "You must have the parameter -t: number"
    exit 1
fi

(
    sleep $time
    echo "_____________________________Run: $command"
    echo "start time: $time"
    echo "running......."
    $command
    echo "Done!!!!!!!__________________"
)</dev/null 2>&1 1> $SCRIPT_PATH_PWD/log.logs &