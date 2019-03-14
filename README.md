# triscraft
A minecraft server with some educational thingys, follows 1.7.10 packs upstream and compatability. 


installaunch is intended for my personal deployment to aws, it assumes there is a oracle jre 8 directory in the directory underneath the server

To get this onto your server you may need to send the tar over ssh, or figure out how to do a cookie workaround with wget. Heres an example command to send files to aws using scp, no middle man:


`scp -i ~/.ssh/master.pem /home/trisimix/Downloads/jre-8u201-linux-x64.tar.gz ubuntu@your-ip.us-east-2.compute.amazonaws.com:~/`


