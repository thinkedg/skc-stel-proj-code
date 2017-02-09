<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [Stelligent Mini-Project](#stelligent-mini-project)
    - [Base System Requirements](#base-system-requirements)
    - [Clone and run the Application](#clone-and-run-the-application)
    - [makefile targets](#makefile-targets)

<!-- markdown-toc end -->





Stelligent Mini-Project
=======================

Base System Requirements
------------------------

* This application will run an Linux system configured with
    * docker
	* docker-compose
	* ansible
	* [setting up an ec2 instance with requirments](https://github.com/thinkedg/skc-docker-setup/blob/master/README.md)

Clone and run the Application
-----------------------------

* base system requirems are met
	* pull the project code
		* `git clone https://github.com/thinkedg/skc-stel-proj-code.git`
	* move into the project code
		* `cd skc-stel-proj-code/`
	* launch the application
		* `make run`
	* test the application
		* `make testall`
	* view application in browser 
		* `http://your-host-ip/main.html`

makefile targets
----------------

  * run the application
	  * `make run`
  * stop the application
	  * `make stop`
  * test that httpd is running
	  * `make testhttpd`
  * test the default page can be displayed
	  * `make testdefaultpage`
  * test the application page can be displayed
	  * `make testmainpage`
  * run all tests
	  * `make testall`
  * remove the application container
	  * `make clean`
  * restarting the application
	  * `make restart`
  * list the running docker containers
	  * `make ps`
  * view the docker logs
	  * `make logs`
  * list the docker images
	  * `make images`
	  



<!-- * for this example will be using aws ec2 instance(s) -->
<!--     * **Ubuntu Server 16.04 LTS (HVM), SSD Volume Type - ami-7c803d1c** -->
<!-- 	*  -->
	
