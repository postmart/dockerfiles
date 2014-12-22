#### Ansible-host container

If you want to start learning ansible, but do not want to create a virtual machine because of extra
resources consumption, using a docker container may become a very efficient and fast way to set up needed
environment.

Usage:
```
./start.sh
```

Start the container (Ubuntu:trusty), generate ssh keys and test basic connectivity between ansible and container.
If everything goes smoothly, in the end of the script you will see a similar output:
```
172.17.0.5 | success >> {
    "changed": false, 
    "ping": "pong"
}
```
Now, you can start using ansible and your ansible host container. For example, run setup to gather addtional useful variable about the host:
```
ansible -i hosts -m setup docker
```
