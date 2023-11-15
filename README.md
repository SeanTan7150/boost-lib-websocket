### Build and run web socket server

```sh
cd examples/
c++ -I ../boost_1_82_0/ -pthread websocketServerSync.cpp -o websocketServerSync
./websocketServerSync 127.0.0.1 8083
```

* Server will wait for web socket handshake from clients
* When handshake is accepted, server will wait to receive message from clients and print it out

### Build and run web socket client

```sh
cd examples/
c++ -I ../boost_1_82_0/ -pthread clientSync.cpp -o clientSync
./clientSync 127.0.0.1 8083
```

* Client will perform handshake with web socket server
* Client will then send json data from `demo.json` to server
