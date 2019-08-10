# kafka wait

## start wait-for


```bash
$ cd ./kafka-wait
$ docker-compose up
WARNING: The Docker Engine you are using is running in swarm mode.

Compose does not use swarm mode to deploy services to multiple nodes in a swarm. All containers will be scheduled on the current node.

To deploy your application across the swarm, use `docker stack deploy`.

Creating network "kafka-wait_default" with the default driver
Creating test-kafka     ... done                                                                                                                                                                                                                                       Creating test-zookeeper  ... done                                                                                                                                                                                                                                      Creating `test-ping-kafka` ... done                                                                                                                                                                                                                                      Attaching to test-kafka, test-zookeeper, `test-ping-kafka`
test-kafka           | waiting for kafka to be ready
test-zookeeper       | ZooKeeper JMX enabled by default
test-zookeeper       | Using config: /conf/zoo.cfg
`test-ping-kafka`      | wait kafka...
test-zookeeper       | 2019-08-11 07:10:05,695 [myid:] - INFO  [main:QuorumPeerConfig@124] - Reading configuration from: /conf/zoo.cfg
test-zookeeper       | 2019-08-11 07:10:05,737 [myid:] - INFO  [main:QuorumPeer$QuorumServer@149] - Resolved hostname: test-zookeeper to address: test-zookeeper/192.168.128.3
test-zookeeper       | 2019-08-11 07:10:05,738 [myid:] - ERROR [main:QuorumPeerConfig@301] - Invalid configuration, only one server specified (ignoring)

......

test-kafka           | [2019-08-11 07:10:08,502] INFO [GroupCoordinator 1]: Starting up. (kafka.coordinator.GroupCoordinator)
test-kafka           | [2019-08-11 07:10:08,507] INFO [GroupCoordinator 1]: Startup complete. (kafka.coordinator.GroupCoordinator)
test-kafka           | [2019-08-11 07:10:08,538] INFO [Group Metadata Manager on Broker 1]: Removed 0 expired offsets in 27 milliseconds. (kafka.coordinator.GroupMetadataManager)
test-kafka           | [2019-08-11 07:10:08,571] INFO Will not load MX4J, mx4j-tools.jar is not in the classpath (kafka.utils.Mx4jLoader$)
`test-ping-kafka`      | begin ping kafka,test-kafka:9092
test-kafka           | [2019-08-11 07:10:08,703] INFO Creating /brokers/ids/1 (is it secure? false) (kafka.utils.ZKCheckedEphemeral)
test-zookeeper       | 2019-08-11 07:10:08,707 [myid:] - INFO  [ProcessThread(sid:0 cport:2181)::PrepRequestProcessor@649] - Got user-level KeeperException when processing sessionid:0x16c7f83484e0000 type:create cxid:0x41 zxid:0x18 txntype:-1 reqpath:n/a Error Path:/

......

test-kafka           | [2019-08-11 07:10:09,388] INFO Partition [ping,0] on broker 1: No checkpointed highwatermark is found for partition ping-0 (kafka.cluster.Partition)
`test-ping-kafka`      | ping kafka is ok

```


