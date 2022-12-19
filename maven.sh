#!/bin/bash
# Before installing maven, ensure  java command is available.

install_dir="/opt"
current_dir=`pwd`
maven_version="apache-maven-3.8.6"
filename="${maven_version}-bin.tar.gz"
download_path="https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/${filename}"
# Download and unzip package
wget $download_path
tar -xvf "${current_dir}/${filename}"

# Move binarie to install directory
output_path="${install_dir}/apachemaven"
sudo mv $maven_version $output_path

# Required environment variables
m2_home="export M2_HOME=${output_path}"
maven_home="export MAVEN_HOME=${output_path}"
path="export PATH=\${M2_HOME}/bin:\${PATH}"

# environment variable setting path
env_file="/etc/profile.d/apachemaven.sh"

sudo echo $m2_home >> $env_file
sudo echo $maven_home >> $env_file
sudo echo $path >> $env_file

# Reload environment variables
sudo chmod +x $env_file
source $env_file

rm "${current_dir}/${filename}"

# verify installation
mvn -version

# Reboot for persisting new environment variables on all terminal and source the env file manually
