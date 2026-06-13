docker ps -q --filter "name=unifi" | xargs -r docker stop
