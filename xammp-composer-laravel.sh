#/!/bin/bash
echo "Some part getting ready for XAMPP - Composer - Laravel installation...";
sudo apt install git curl wget;

# XAMMP part of setup
echo "XAMMP Installation Starting..."
echo "XAMMP Downloding...";
wget https://www.apachefriends.org/xampp-files/7.2.2/xampp-linux-x64-7.2.2-0-installer.run;
echo "Permission setting up!";
chmode +x xampp-linux-x64-7.2.2-0-installer.run;
echo "Program Installing starting...";
sudo ./xampp-linux-x64-7.2.2-0-installer.run;

# Composer Part

echo "Composer start to installing";

sudo ln -s /opt/lampp/bin/php /usr/local/bin/php;

echo "Composer Downloading...";

sudo curl -s https://getcomposer.org/installer | /opt/lampp/bin/php;

echo "Global Setting up!";

sudo curl -sS https://getcomposer.org/installer | php;

sudo mv composer.phar /usr/local/bin/composer;

echo "Composer Ready!";

# Laravel Part
echo "Downloading laravel via Composer";

composer global require "laravel/installer=~1.1";

echo "Laravel Installed!";

echo "Well done ";

echo "Do not forget to setting up httpd.conf file to your working directory!";
echo "chmod -R 777 Working-Direcory-Name <- if you do not do this you can see error!";





