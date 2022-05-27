#include <iostream>
#include "src/server/server.hpp"

int main(int argc, char **argv)
{
    serverssl::server sr("192.168.0.88", 8887);
    sr.init();
    return 0;
}