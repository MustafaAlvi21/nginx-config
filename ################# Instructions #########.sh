################# Instructions #################
# Simple config to deploy a Static SPA React App. 
# The most important field for deploying your React app is root where your build files will be hosted.
# For example, in this case, I copied my build file in the  /home/ubuntu/app-deploy/build directory.
# Since a React project is built of static files that only need a browser, you don’t have to configure any further server-side language. 
################# Instructions  #################

server {
  listen 80; 
  listen [::]:80; 
  root /home/Sheep_dApp_deploy/build;
  location / {
    try_files $uri /index.html;
  }
}





sudo fuser -k 80/tcp
sudo fuser -k 443/tcp

74.208.236.92

http://74.208.239.33/



sudo ln -s /etc/nginx/sites-available/reactApp /etc/nginx/sites-enabled


  GNU nano 4.8                                                                      reactApp
server {
    listen 80 default_server;

    root /var/www/html;
    index index.html index.htm;

    server_name sigmasheepsociety.com www.sigmasheepsociety.com;

    location / {
            try_files $uri $uri/ =404;
    }
}





server {
    listen 80;
    server_name sigmasheepsociety.com www.sigmasheepsociety.com;

    location / {
        proxy_pass http://localhost:80;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}





sudo mkdir -p /var/www/sigmasheepsociety.com/html

nano /var/www/sigmasheepsociety.com/html/index.html

sudo nano /etc/nginx/sites-available/sigmasheepsociety.com


server {
    listen 80;
    listen [::]:80;

    root /var/www/sigmasheepsociety.com/html;
    index index.html index.htm index.nginx-debian.html;

    server_name sigmasheepsociety.com www.sigmasheepsociety.com;

    location / {
            try_files $uri $uri/ =404;
    }
}


nginx -t

sudo ln -s /etc/nginx/sites-available/sigmasheepsociety.com /etc/nginx/sites-enabled/

sudo nano /etc/nginx/nginx.conf

sudo nano /etc/nginx/nginx.conf
and remove hash(#) from this line "server_names_hash_bucket_size 64;"

sudo nginx -t

sudo systemctl restart nginx
sudo systemctl status nginx


sudo nano /etc/hosts


sudo cp -r build/* var/www/sigmasheepsociety.com/html

completely remove nginx with files
sudo apt-get purge nginx nginx-common

sudo apt install nginx
nginx -v


sudo apt-get update  
sudo apt-get install git
