
Follow this instructions to run the Multi_Vagrant Ansible app.
1. Download first all the files from this github repository inside a folder named as you want.
2. Open Gitbash (run as Administrator) and move to yopur folder using the proper commands.
3. Spin vagrant up typing "vagrant up" and wait to set everything up.
4. You should get a message that says the app is running.

to access the app page use the URL "/development.local"
to access the posts for the app use the url "/development.local/posts"

To stop the app once is running:
1. Press Ctrl+C
2. Type "vagrant ssh app" to enter into the virtual machine
3. Type "kill -9 -1" to kill the app process and go out of the virtual machine
4. Type "vagrant destroy -f" to remove the virtual machine