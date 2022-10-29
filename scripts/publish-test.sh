SHELL_PATH="$(cd $(dirname $0); pwd)";
PROJECT_PATH="$(cd $SHELL_PATH ; cd ../ ; pwd)";

cd $PROJECT_PATH;

IMAGE_TAG="example-webfont-test";
REMOTE_NAME="18058173171/example-webfont-test:latest";

docker rmi $REMOTE_NAME --force;
docker tag $IMAGE_TAG $REMOTE_NAME;
docker push $REMOTE_NAME;