# mysql wait

## start wait-for (use docker-compose.yml)


```bash
$ cd ./mysql-wait
$ docker-compose up

Creating test-mysql ... done
Creating test-ping-mysql ... done
Attaching to test-mysql, test-ping-mysql
test-mysql           | Initializing database
test-mysql           | 2019-08-07T18:39:58.141775Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
test-ping-mysql      | wait mysql...
test-mysql           | 2019-08-07T18:39:58.344876Z 0 [Warning] InnoDB: New log files created, LSN=45790
test-mysql           | 2019-08-07T18:39:58.390986Z 0 [Warning] InnoDB: Creating foreign key constraint system tables.

........

test-mysql           | 2019-08-07T18:40:09.838971Z 0 [Note] Event Scheduler: Loaded 0 events
test-mysql           | 2019-08-07T18:40:09.839686Z 0 [Note] mysqld: ready for connections.
test-mysql           | Version: '5.7.22'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server (GPL)
test-ping-mysql      | root 1234 test-mysql 3306
test-ping-mysql      | ping is ok


```

dockerfile

```dockerfile
FROM golang AS builder

WORKDIR /go/src/ping-mysql
COPY . .
# disable cgo
ENV CGO_ENABLED=0
# build steps
RUN echo ">>> 1: go version" && go version
RUN echo ">>> 2: go get" && go get -v -d
RUN echo ">>> 3: go install" && go install

FROM alpine
WORKDIR /go/bin/
COPY --from=builder /go/bin/ping-mysql ./ping-mysql
EXPOSE 8080
CMD ["./ping-mysql"]
```