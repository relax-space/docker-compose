

# start

``` bash
docker-compose -f rocketMQ/docker-compose.yml up -d
```
或者

``` bash
docker-compose -f rocketMQ/dc.yml up -d
```

visit:
http://127.0.0.1:8080

测试：
下载appache RocketMQ（用cmd来做测试，下载地址：http://rocketmq.apache.org/release_notes/release-notes-4.7.0/）

window测试：
启动消费者

```
set NAMESRV_ADDR=localhost:9876
./tools.cmd org.apache.rocketmq.example.quickstart.Consumer
```

启动生产者

```
set NAMESRV_ADDR=localhost:9876
./tools.cmd org.apache.rocketmq.example.quickstart.Producer
```

启动成功后，生产者会发送1000个消息，然后自动退出。
此时，在消费者界面按下Ctrl + C，就会收到刚刚生产者发出的消息。


参考：
https://github.com/apache/rocketmq-docker
http://rocketmq.apache.org/docs/quick-start/

https://www.jianshu.com/p/b1824c6b96c1
https://juejin.im/post/5d1abc94e51d45108223fcb9