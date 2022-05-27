#ifndef __CLIENT__CPP__
#define __CLIENT__CPP__

#include <errno.h>
#include <unistd.h>
#include <string.h>
#include <resolv.h>
#include <netdb.h>
#include <openssl/ssl.h>
#include <openssl/err.h>

const int ERROR_STATUS = -1;

class client
{
private:
SSL_CTX *InitSSL_CTX(void);
int OpenConnection(const char *hostname, const char *port);
void DisplayCerts(SSL *ssl);

int SSL_read_all(SSL *ssl, void* buf, int num);
    
public:
    client(/* args */);
    ~client();
    void init();
};




#endif