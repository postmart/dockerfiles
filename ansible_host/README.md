#### Ansible-host container

If you want to start learning ansible, but does not want to create a virtual machine,
using docker container may become very efficient and fast.

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
