# Bashwatch

Enables otherwise inaccessible container to receive commands, if access to the filesystem.

## Usage

- Modify bashwatch to put your own linux commands after the commented lines.
- Leave bashwatch.sh running in container.
- `chmod u+x bashwatch.sh`
- `./bashwatch.sh`
- Leave this script running in the backgroud. Do not kill it.
- When you want to trigger the bashwatch you put a file named bw1234.**YOUR_VARIABLE** in folder with bashwatch.sh

## Why would any one use this?

I needed a container to do a mysql dump. I couldn't ssh to it or exec commands from the outside. But I could modify it's filesystem from the outside. So I used a script like this. Later found out that I could do something similar to docker exec (it was not docker though, it was another container system), oh well, live and learn.
