#!/bin/bash
IP=""
echo "Generating ssh keys"
if ! ssh-keygen -C "ansible@localhost" -f ansible_ssh -t rsa -N "" ; then
echo "Could not generate the keys"
exit 1
fi

echo "Building docker image"
if ! docker build -t ansible_host . ; then
echo "Could not build docker image. Please refer to the error"
exit 1
fi

echo "Starting docker container"
docker run --name ansible_host -t ansible_host &
echo "" 
#echo "Could not start container"
#exit 1
sleep 1

echo "Getting IP address"
while [[ -z $IP ]] ; do 
IP=$(docker inspect ansible_host |grep IPAddress | awk '{print $2}'|cut -d, -f1)
done

echo "Starting ssh"
docker exec ansible_host bash -c "/etc/init.d/ssh start"

echo "Container's IP: $IP"
echo "[docker]" > hosts
echo $IP "ansible_ssh_user=ansible ansible_ssh_private_key_file=ansible_ssh" >> hosts

chmod 600 ansible_ssh*

echo "Cheking ansible connectivity"
ansible -i hosts -m ping docker

