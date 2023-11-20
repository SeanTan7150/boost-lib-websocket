#include <WSCHATNetwork/TCPClient.h>

#include <iostream>
#include <thread>

using namespace WSCHAT;

int main(int agrc, char *argv[])
{
    TCPClient client{"localhost", 8083};
    client.OnMessage = [](const std::string &message)
    { std::cout << message; };

    std::thread t{[&client]()
                  { client.Run(); }};

    while (true)
    {
        std::string message;
        getline(std::cin, message);

        if (message == "\\q")
        {
            break;
        }
        message += "\n";
        client.SendMessage(message);
    }

    client.Stop();
    t.join();
    return 0;
}