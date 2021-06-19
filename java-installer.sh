#!/bin/bash
jdk_compressed_dir="/home/saliou673/Téléchargements/jdk"

install_dir="/usr/lib/jvm"

sudo mkdir -p $install_dir

for compressed_jdk in `ls $jdk_compressed_dir`
do
	complete_path="${jdk_compressed_dir}/${compressed_jdk}"
	sudo tar -xvf $complete_path -C $install_dir
done

priority=1
default_path=""
for decompressed_jdk in `ls $install_dir`
do
	default_path_base="${install_dir}/${decompressed_jdk}"
	default_path="${default_path_base}/bin"
	java="${default_path}/java"
	javac="${default_path}/javac"
	jar="${default_path}/jar"
	jshell="${default_path}/jshell"
	echo $
	sudo update-alternatives --install /usr/bin/java java $java $priority
	sudo update-alternatives --install /usr/bin/javac javac $javac $priority
	sudo update-alternatives --install /usr/bin/jar jar $jar $priority
	sudo update-alternatives --install /usr/bin/jshell jshell $jshell $priority
	priority=$((priority+1))
done
java_home="JAVA_HOME=\"${default_path_base}\""
sudo echo  $java_home >> /etc/environment

# Notice when you change current java version with update-alternative, you
# need to change JAVA_HOME Path manually by opening /etc/environment file.
