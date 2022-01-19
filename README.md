## Start project

### Create docker network
```shell
docker network create super_network
```

### Start frontend
> Change folder to vue_in_docker and type:
```shell
docker-compose up --build
```

### Start backend
> Change folder to django_in_docker and type:
```shell
docker-compose up --build
```

### Fill database with fake users
> Change folder to django_in_docker and type:
```shell
make fill_db
```

### Create superuser
> Change folder to django_in_docker and type:
```shell
make superuser
```

### Endpoints:
> http://localhost - frontend
>
> http://localhost/api/ - rest_framework


### Run Vue.js without docker-compose
```shell
docker image build -t test_vue:build . -f Dockerfile 
```
```shell
docker run -p 8080:8080 test_vue:build 
```