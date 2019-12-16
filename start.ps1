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