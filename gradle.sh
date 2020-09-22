# Dowload gradle in /temp file
sudo wget https://services.gradle.org/distributions/gradle-6.2-all.zip -P /tmp

# Once the download is completed, extract the zip file in the /opt/gradle directory
sudo unzip -d /opt/gradle /tmp/gradle-*.zip

# configure the PATH environment variable to include the Gradle bin directory
sudo sh -c 'echo "export GRADLE_HOME=/opt/gradle/gradle-6.2" >> /etc/profile.d/gradle.sh'
sudo sh -c 'echo "export PATH=\${GRADLE_HOME}/bin:\${PATH}"  >> /etc/profile.d/gradle.sh'

#reload gradle.sh
source /etc/profile.d/gradle.sh
# Remove downloaded zip file
sudo rm /tmp/gradle-*

# Verify the Gradle installation
gradle -v
