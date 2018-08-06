#!/bin/bash

echo "installing packages.."
sudo apt-get install build-essential cmake pkg-config -y
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
sudo apt-get install libxvidcore-dev libx264-dev -y
sudo apt-get install libgtk2.0-dev libgtk-3-dev -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install python2.7-dev python3-dev -y
sudo apt-get install unzip -y

echo "installing pip3"
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

echo "installing numpy.."
sudo pip3 install numpy

echo "downloading files..."
wget https://github.com/gsbecerra/opencv/archive/v1.0.7.zip
unzip v1.0.7.zip
cd opencv-1.0.7/3_4_2/NanoPiNeoPlus2
sudo cp usr_local_bin/* /usr/local/bin/.
sudo cp -r usr_local_include/* /usr/local/include/.
sudo cp -r usr_local_lib/* /usr/local/lib/.
sudo cp usr_local_lib_python3.5_dist-packages/* /usr/local/lib/python3.5/dist-packages/.
sudo cp -r usr_local_share/* /usr/local/share/.
echo "creating config file"
sudo echo "/usr/local/lib/" >> opencv.conf
sudo cp opencv.conf /etc/ld.so.conf.d/.
sudo ldconfig
echo "opencv 3.4.2 installed and configured"

pip install python-periphery
