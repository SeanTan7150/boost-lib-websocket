#pragma once

#include <boost/asio.hpp>

#include <queue>

namespace WSCHAT
{
    namespace net = boost::asio;
    using tcp = net::ip::tcp;

    using OnMessageHandler = std::function<void(std::string)>;

    class TCPClient
    {
    public:
        TCPClient(const std::string &address, int port);

        void Run();

        void Stop();

        void SendMessage(const std::string &message);

    private:
        void AsyncRead();

        void OnRead(boost::system::error_code ec, size_t bytesTransferred);

        void AsyncWrite();

        void OnWrite(boost::system::error_code ec, size_t bytesTransferred);

    public:
        OnMessageHandler OnMessage;

    private:
        net::io_context _ioc{};
        tcp::socket _socket;

        tcp::resolver::results_type _endpoints;
        net::streambuf _buffer{65536};
        std::queue<std::string> _outgoingMessages{};
    };
}