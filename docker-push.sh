#!/bin/bash
die () {
    echo -e >&2 "$@"
    exit 1
}

[ "$#" -eq 2 ] || die "2 argument required, $# provided\nUsage: docker-push.sh <docker-image> <os.version-jdk.version>"

docker_image=$1
docker_image_tag=$2

echo "Docker image: ${docker_image} tag: ${docker_image_tag}"
docker tag ${docker_image} mcamendoza1/docker-ubuntu:${docker_image_tag}
echo "Docker image push to DockerHub" 
docker push mcamendoza1/docker-ubuntu:${docker_image_tag}