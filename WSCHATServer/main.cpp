#include <WSCHATNetwork/TCPServer.h>

#include <iostream>

int main(int agrc, char *argv[])
{
    WSCHAT::TCPServer server{WSCHAT::IPVersion::V4, 8083};

    server.OnJoin = [](WSCHAT::TCPConnection::ptr server)
    {
        std::cout << "Client has joined the server: " << server->GetUsername() << std::endl;
    };

    server.OnLeave = [](WSCHAT::TCPConnection::ptr server)
    {
        std::cout << "Client has left the server: " << server->GetUsername() << std::endl;
    };

    server.OnClientMessage = [&server](const std::string &message)
    {
        server.Broadcast(message);
    };

    server.Run();
    return 0;
}