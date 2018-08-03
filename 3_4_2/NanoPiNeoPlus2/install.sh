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
pip3 install numpy

echo "downloading files..."
wget https://github.com/gsbecerra/opencv/archive/v1.0.3.zip
unzip v1.0.3.zip
cd opencv-1.0.3/3_4_2/NanoPiNeoPlus2
cp usr_local_bin/* /usr/local/bin/.
cp usr_local_include/* /usr/local/include/.
cp usr_local_lib/* /usr/local/lib/.
cp usr_local_lin_python3.5_dist-packages/* /usr/local/bin/python3.5/dist-packages/.
cp usr_local_share/* /usr/local/share/.
echo "creating config file"
cd /etc/ld.so.conf.d
sudo echo "/usr/local/lib/" opencv.conf
sudo ldconfig
