# mysql wait

## start wait-for-it (use docker-compose-consume)

```bash
$ cd ./mysql-wait
$ docker-compose -f docker-compose-v1.yml up

Creating network "mysql-wait_default" with the default driver
Creating test-mysql ... done
Creating test-ping-mysql ... done
Attaching to test-mysql, test-ping-mysql

test-mysql         | Initializing database
test-mysql         | 2019-08-02T09:26:41.385255Z 0 [Warning] TIMESTAMP with implicit DEFAULT value is deprecated. Please use --explicit_defaults_for_timestamp server option (see documentation for more details).
test-mysql         | 2019-08-02T09:26:41.608619Z 0 [Warning] InnoDB: New log files created, LSN=45790
test-mysql         | 2019-08-02T09:26:41.669049Z 0 [Warning] InnoDB: Creating foreign key constraint system tables.
test-mysql         | 2019-08-02T09:26:41.736291Z 0 [Warning] No existing UUID has been found, so we assume that this is the first time that this server has been started. Generating a new UUID: a31af784-b507-11e9-a60e-0242ac150002.
test-mysql         | 2019-08-02T09:26:41.740533Z 0 [Warning] Gtid table is not ready to be used. Table 'mysql.gtid_executed' cannot be opened.
test-mysql         | 2019-08-02T09:26:41.741032Z 1 [Warning] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
test-ping-mysql      | wait-for-it.sh: waiting 36000 seconds for test-mysql:3306

..........

test-mysql         | 2019-08-02T09:26:51.831677Z 0 [Warning] 'tables_priv' entry 'sys_config mysql.sys@localhost' ignored in --skip-name-resolve mode.
test-mysql         | 2019-08-02T09:26:51.838117Z 0 [Note] Event Scheduler: Loaded 0 events
test-mysql         | 2019-08-02T09:26:51.838450Z 0 [Note] mysqld: ready for connections.
test-mysql         | Version: '5.7.22'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server (GPL)
test-ping-mysql      | wait-for-it.sh: test-mysql:3306 is available after 10 seconds
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

FROM pangpanglabs/alpine-ssl
WORKDIR /go/bin/
RUN apk add --no-cache bash
COPY --from=builder /go/bin/ping-mysql ./ping-mysql
COPY --from=builder /go/src/ping-mysql/wait-for-it.sh ./wait-for-it.sh
RUN chmod +x ./wait-for-it.sh
EXPOSE 8080
CMD ["./ping-mysql"]

```


