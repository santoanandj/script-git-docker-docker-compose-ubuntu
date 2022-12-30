#installing git,docker,docker-compose in ubuntu
sudo apt update -y
sudo apt install git -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo apt install docker-compose -y
#dockerfile creation
touch Dockerfile
echo "FROM ubuntu"> Dockerfile
echo "RUN touch test.txt">> Dockerfile
#docker image build
sudo docker build -t test:v1 .
sudo docker images
#running container
sudo docker run -it -d test:v1 bash
sudo docker ps

