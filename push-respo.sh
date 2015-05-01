
#for s in $(cat hadoop)
#for s in $(cat images-names)
for s in $(docker images |grep 192.168.3.25 | awk '{print  $1}')
#for s in $(docker images | awk '{print  $1}'| awk '{split($0,b,"/");print b[2]}')

 do
#docker pull $s
#echo $s
docker push $s
done
