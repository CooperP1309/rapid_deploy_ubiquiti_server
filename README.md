# Rapid Deploy Ubuquiti Server

### Quick Note
I did not make the docker compose and mogno init files!

I got them from this tutorial: 
https://oneuptime.com/blog/post/2026-02-08-how-to-run-unifi-controller-in-docker/view

They are the work of: https://github.com/nawazdhandala

I just made the quick shell scripts that tie everything together. I made this repo so
that I had a pure command line method to quick deploy a Ubiquiti Server.

## Usage
Prerequisites: 
  - Linux/Mac (i.e. a bash shell)
  - Docker
  - Docker Compose

1. Clone this repo in a terminal
```
git clone https://github.com/CooperP1309/rapid_deploy_ubiquiti_server/
```

2. Change into the cloned repo directory
```
cd rapid_deploy_ubiquiti_server
```

3. Allow executable permissions for the quick start script
```
sudo chmod +x quick_start.sh
```

4. Run the quick start script
```
sudo ./quick_start.sh
```
