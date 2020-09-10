#!/bin/bash
sudo rm  /home/start.sh
sudo cp /Performance/start.sh /home/
sudo chmod 744  /home/start.sh
cd /
#rm -rf /Performance
wget https://bitbucket.org/pjtr/jmeter-websocket-samplers/downloads/JMeterWebSocketSamplers-1.2.8.jar
mv JMeterWebSocketSamplers-1.2.8.jar /mnt/jmeter/apache-jmeter-5.3/lib
git clone -b websockets https://github.com/justUniverse13/Performance
/mnt/jmeter/apache-jmeter-5.3/bin/jmeter.sh -n -t /Performance/scenario.jmx  -l /mnt/scenario.jtl
