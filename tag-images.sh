
#cd /docdata
#for s in $(cat hadoop)
#for s in $(cat images-names)
for s in $(docker images | awk '{print  $1}')
#for s in $(docker images | awk '{print  $1}'| awk '{split($0,b,"/");print b[2]}')

 do
#docker pull $s
echo $s
TAR=$(echo $s |awk '{split($0,b,"/");print b[1] b[2]}')
docker tag $s 192.168.3.25:5000/$TAR
dokcer push 192.168.3.23:5000/$TAR
	#echo "$s"
#	docker save $s > /docdata/docker-images-tar/$TAR.tar
echo $TAR
done
