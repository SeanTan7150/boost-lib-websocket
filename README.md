# C++ Web Socket

### Prerequisites

- [boost lib](https://www.boost.org)
- [CMake](https://cmake.org/download/)

### Build with CMake

```sh
cd boost-lib-websocket
cmake .
make -j 4
```

### Run web socket server

```sh
./WSChatServer/WSChatServer
```

### Run web socket client

```sh
./WSChatClient/WSChatClient
```

### Communication & broadcast

- After a client joined the server, notifications will be received as below:

```sh
Client has joined the server: 127.0.0.1:33134
```

- Clients can now communicate with each other by giving inputs.

- Messages sent by client will be broadcasted by the server to every connected clients.

- To disconnected properly, client may enter `\q` command.

- To shut down the server, enter `CTRL + C`.
