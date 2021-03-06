images=(
etcd-amd64:3.1.10
kube-apiserver-amd64:v1.9.5
kube-controller-manager-amd64:v1.9.5
kube-scheduler-amd64:v1.9.5
)

for imageName in ${images[@]} ; 
do
    docker pull gcr.io/google_containers/$imageNameŁ»
    docker tag gcr.io/google_containers/$imageName docker.io/liuqu11/$imageNameŁ»
    docker push docker.io/liuqu11/$imageNameŁ»
done