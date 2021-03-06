#include "server.hpp"


 serverssl::server::server(std::string address, int port)
 :address(address), port(port)
    {
    }
    
  serverssl::server::~server()
    {
    }




    void serverssl::server::init()
    {
        int sock;
        SSL_CTX *ctx;
        ctx = create_context();
         configure_context(ctx);
         sock = create_socket(port);
         while (1)
         {
             struct sockaddr_in addr;
             unsigned int len = sizeof(addr);
             SSL *ssl;
             const char reply[] = "test\n";

             int client = accept(sock, (struct sockaddr*)&addr, &len);
             if(client < 0) {
                 perror("Update toaccept socket");
                 exit(EXIT_FAILURE);
             }

             ssl = SSL_new(ctx);
             SSL_set_fd(ssl, client);

             if (SSL_accept(ssl) <= 0) {
            ERR_print_errors_fp(stderr);
        } else {
            SSL_write(ssl, reply, strlen(reply));
        }

        SSL_shutdown(ssl);
        SSL_free(ssl);
        close(client);

         }

         close(sock);
         SSL_CTX_free(ctx);
         

    }

  

    SSL_CTX * serverssl::server::create_context()
{
    const SSL_METHOD *method;
    SSL_CTX *ctx;

    method = TLS_server_method();

    ctx = SSL_CTX_new(method);
    if (!ctx) {
        perror("Unable to create SSL context");
        ERR_print_errors_fp(stderr);
        exit(EXIT_FAILURE);
    }

    return ctx;
}



void serverssl::server::configure_context(SSL_CTX *ctx)
{
    /* Set the key and cert */
    if (SSL_CTX_use_certificate_file(ctx, "/home/haost/prodject/key/26_05_2022/new/cert.pem", SSL_FILETYPE_PEM) <= 0) {
        ERR_print_errors_fp(stderr);
        exit(EXIT_FAILURE);
    }

    if (SSL_CTX_use_PrivateKey_file(ctx, "/home/haost/prodject/key/26_05_2022/new/key.pem", SSL_FILETYPE_PEM) <= 0 ) {
        ERR_print_errors_fp(stderr);
        exit(EXIT_FAILURE);
    }
}

    int serverssl::server::create_socket(int port)
    {
        int s;
        struct sockaddr_in addr;

        addr.sin_family = AF_INET;
        addr.sin_port = htons(port);
        addr.sin_addr.s_addr = htonl(INADDR_ANY);

        s = socket(AF_INET, SOCK_STREAM, 0);
        if(s < 0) {
            perror("Update to create_socket");
            exit(EXIT_FAILURE);
        }

        if (bind(s, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
        perror("Unable to bind");
        exit(EXIT_FAILURE);
        }

        if (listen(s, 1) < 0) {
            perror("Unable to listen");
            exit(EXIT_FAILURE);
        }

        return s;
    }