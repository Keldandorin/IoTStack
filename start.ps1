#Create Persistant store
$path = "C:\IoT\"

#Grafana
New-Item -Path $path"Grafana" -name "data" -ItemType "directory"
New-Item -Path $path"Grafana" -name "log" -ItemType "directory"
#influxdb
New-Item -Path $path"influxdb" -name "data" -ItemType "directory"
#Mosquitto
New-Item -Path $path"mosquitto" -name "config" -ItemType "directory"
New-Item -Path $path"mosquitto" -name "data" -ItemType "directory"
New-Item -Path $path"mosquitto" -name "log" -ItemType "directory"
#NodeRed
New-Item -Path $path"nodered" -name "data" -ItemType "directory"
#Hassio
New-Item -Path $path"hassio" -name "config" -ItemType "directory"
#portainer
docker run -d -p 9000:9000 -p 8000:8000 --name portainer -v "/var/run/docker.sock:/var/run/docker.sock" -v "C:\Docker\IoT\Portainer\data:\data" portainer/portainer

#nginx Proxy manager
docker run -d --name=nginx-proxy-manager -p 8181:8181 -p 8080:8080 -p 4443:4443 -v "C:\Docker\iot\Nginx\data:\config" jlesage/nginx-proxy-manager
