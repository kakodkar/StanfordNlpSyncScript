# Copy the war to the intended location
sudo cp Sample.war /intendedLocation/
echo 'Copied war'

# In the directory /modelsLocation
# create a permanent folder structure such that the models jar is located at
# WEB-INF/lib/stanford-corenlp-3.4.1-models.jar
cd /modelsLocation 
# Add the models jar to the war
sudo -u tomcat jar -uf /intendedLocation/Sample.war WEB-INF/lib/stanford-corenlp-3.4.1-models.jar
echo 'Added Model jar'

# Fix permissions just in case you have OCD
sudo chown -hR tomcat:tomcat /intendedLocation/Sample.war
echo 'Fixed Permission'

# Go ahead and run
sudo /etc/init.d/tomcat restart