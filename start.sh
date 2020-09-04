rm -rf /Performance
git clone https://github.com/justUniverse13/Performance
/mnt/jmeter/apache-jmeter-5.3/bin/jmeter.sh -n -t /Performance/scenario.jmx  -l /mnt/scenario.jtl