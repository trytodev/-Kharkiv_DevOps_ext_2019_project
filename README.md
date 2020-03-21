# Kharkiv_DevOps_ext_2019_project

Currently the workflow is next:

Step 1.1 - initialization of the new instances using **Terraform**. Config file contains `count` variable to launch as many instances as needed.

![img](https://github.com/trytodev/Kharkiv_DevOps_ext_2019_project/blob/master/img/step_1.1.png)

Step 1.2 - install **Apache** on every server using Ansible. To make the process fully automate small bash script is used.

![img](https://github.com/trytodev/Kharkiv_DevOps_ext_2019_project/blob/master/img/step_1.2.png)

After everything is ready to go, developer can push code to **GitHub** and **Jenkins** will pick it up to deploy it to every machine launched in Step 1.1.

![img](https://github.com/trytodev/Kharkiv_DevOps_ext_2019_project/blob/master/img/step_2.png)
dir.png)