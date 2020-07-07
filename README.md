# Portable environment for BiomID student project

This repository is supposed to be used in addition to Biomid repository (private).

## Vagrant quick start

Commands to quick start :

```bash
# Build the VM
$ vagrant up

# Open SSH tunnel with VM
& vagrant ssh

# Stop the VM
$ vagrant halt

# Destroy the VM
$ vagrant destroy
```

## Biomid Nodejs-back quick start

Once you are in the VM via SSH (if you got access to biomid project, otherwise you can just consider it as a classic nodejs imported project)

```bash
$ ./importProject.sh
$ cd biomid
$ npm install && npm run start
```

Open localhost:3001 from host you should see a QrCode used for uPort authentica
