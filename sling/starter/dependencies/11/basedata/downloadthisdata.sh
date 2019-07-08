echo Downloads the data saved here from a running Sling Starter instance
echo Remember to use clean starter and remove Composum bundles

curl -s -u admin:admin http://localhost:9090/system/console/bundles.json > bundles.json
curl -s -u admin:admin http://localhost:9090/system/console/status-Bundles/configuration-status.txt > configuration-status.txt
