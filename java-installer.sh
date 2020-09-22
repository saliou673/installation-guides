sudo mkdir -p /usr/local/java

# 3.Open the terminal and go the download directory and copy the downloaded file to /usr/local/java

sudo cp -r jdk-14.0.1_linux-x64_bin.tar.gz /usr/local/java/

# 4. Navigate to /usr/local/java

cd /usr/local/java

# 5. Extract the tar file

sudo tar xvzf jdk-14.0.1_linux-x64_bin.tar.gz

# 6. Remove the tar file

sudo rm -fr jdk-14.0.1_linux-x64_bin.tar.gz

# 7. Open /etc/profile with sudo privileges

sudo nano /etc/profile

# 8. Scroll down to the end ot the file using arrow keys and add the following lines belowto the end of /etc/profile file

JAVA_HOME=/usr/local/java/jdk-14.0.1
JRE_HOME=/usr/local/java/jdk-14.0.1
PATH=$PATH:$JRE_HOME/bin:$JAVA_HOME/bin

export JAVA_HOME
export JRE_HOME
export PATH

# 9. Update alternatives

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk-14.0.1/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk-14.0.1/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk-14.0.1/bin/javaws" 1
sudo update-alternatives --set java /usr/local/java/jdk-14.0.1/bin/java
sudo update-alternatives --set javac /usr/local/java/jdk-14.0.1/bin/javac
sudo update-alternatives --set javaws /usr/local/java/jdk-14.0.1/bin/javaws

# 10. Relod profile

source /etc/profile

# 11. and check if java is successufully installed

java -version