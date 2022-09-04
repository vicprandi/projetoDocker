Aqui neste projeto será usado comandos python.
Primeiro é necessário instalar o pip com permissão de adm. 

1. sudo pip install --upgrade pip

2.  DOCKER_BUILDKIT=1 docker build .


3. sudo pip3 install flask

4. pip3 freeze | grep Flask >> requirements.txt

6. docker tag python-docker:latest python-docker:v1.0.0

7. pip3 install mysql-connector-python
 pip3 freeze | grep mysql-connector-python >> requirements.txt

 8. docker build --tag python-docker .