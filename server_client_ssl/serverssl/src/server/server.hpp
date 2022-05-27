#ifndef __SERVER_CPP__
#define __SERVER_CPP__

#include <stdio.h> 
#include <unistd.h> 
#include <string.h> 
#include <sys/socket.h> 
#include <arpa/inet.h> 
#include <openssl/ssl.h> 
#include <openssl/err.h> 
#include <string>

namespace serverssl{
    class server
    {
    private:
       std::string address;
       int port;
       int create_socket(int );
       void configure_context(SSL_CTX *);
       SSL_CTX *create_context();
    public:
        server(std::string, int );
        ~server();
        void init();
    };
}



#endif