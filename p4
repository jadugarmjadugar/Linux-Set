---
- name:  "test"
  hosts: localhost

  tasks:
  - name:  "install httpd"
    yum:
      name: httpd
      state: present 
  
  - name: "httpd start"
    service:
      name: httpd
      state: started
