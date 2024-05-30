while getopts c:t: flag
do 
    case "${flag}" in
        c) command=${OPTARG};;
        t) time=${OPTARG};;
        esac
done
sleep $time
echo "_____________________________Run: $command"
echo "start time: $time"
echo "running......."
$command
echo "Done!!!!!!!__________________"