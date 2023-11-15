#include <boost/beast/core.hpp>
#include <boost/beast/websocket.hpp>
#include <iostream>
#include <string>
#include <thread>

using tcp = boost::asio::ip::tcp;

#define IP_ADDRESS "127.0.0.1"
#define PORT_NUMBER 8083

int main()
{
    auto const address = boost::asio::ip::make_address(IP_ADDRESS);
    auto const port = static_cast<unsigned short>(PORT_NUMBER);

    boost::asio::io_context ioc{1};
    tcp::acceptor acceptor{ioc, {address, port}};

    while (1)
    {
        tcp::socket socket{ioc};
        acceptor.accept(socket);
        std::cout << "socket accepted" << std::endl;

        std::thread{[q{std::move(socket)}]() mutable
                    {
                        boost::beast::websocket::stream<tcp::socket> websocket{std::move(const_cast<tcp::socket &>(q))};
                        websocket.accept();

                        while (1)
                        {
                            try
                            {
                                boost::beast::flat_buffer buffer;
                                websocket.read(buffer);
                                auto output = boost::beast::buffers_to_string(buffer.cdata());
                                std::cout << output << std::endl;
                                websocket.write(buffer.data());
                            }
                            catch (boost::beast::system_error const &se)
                            {
                                if (se.code() != boost::beast::websocket::error::closed)
                                {
                                    std::cerr << se.code().message() << std::endl;
                                    break;
                                };
                            }
                        }
                    }}
            .detach();
    }
    return 0;
}
