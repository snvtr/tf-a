---
all:
  children:
    apache_hosts:
      hosts:
        ${APACHE_IP}: {}
    haproxy_hosts:
      hosts:
        ${HAPROXY_IP}: {}
  hosts:
    ${APACHE_IP}:
      ip: ${APACHE_IP}
    ${HAPROXY_IP}:
      ip: ${HAPROXY_IP}
  vars:
      ansible_user: ubuntu
      ansible_become: yes
      ansible_ssh_extra_args: -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null
      #ansible_password: "xx"
  
