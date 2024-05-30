import subprocess
import sys
import pathlib

command = sys.argv[1]
time = sys.argv[2]
path = pathlib.Path(sys.argv[3]).parent
path_pwd = sys.argv[4]

if not time:
    raise "You must have the parameter -t: number"
if not command:
    raise "You must have the parameter -c: command bash"

full_command = "nohup " + \
               f"bash {path}/core/schedule.bash " + \
               f"-c '{command}' "  + \
               f"-t '{time}' " + \
               f"> {path_pwd}/log.logs 2>&1 &"
                
subprocess.Popen(full_command, shell=True)

