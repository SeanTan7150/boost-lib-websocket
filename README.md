### Build and run web socket server
```sh
cd examples/
c++ -I ../boost_1_82_0/ -pthread websocketServerSync.cpp -o websocketServerSync
./websocketServerSync 127.0.0.1 8083
```

### Build and run web socket client
```sh
cd examples/
c++ -I ../boost_1_82_0/ -pthread clientSync.cpp -o clientSync
./clientSync 127.0.0.1 8083
```
