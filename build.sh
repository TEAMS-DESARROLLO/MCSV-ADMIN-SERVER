echo $PWD
# cp $PWD/target/*.jar /home/fuentes/target
cd /home/fuentes/admin-server
echo $PWD
docker build -t admin-server:1.0.1 .