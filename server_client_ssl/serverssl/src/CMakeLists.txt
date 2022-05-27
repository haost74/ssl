
include(FetchContent)
FetchContent_Declare(
  ssl_content
  URL      https://github.com/janbar/openssl-cmake/archive/refs/tags/1.1.1k-20210430.tar.gz
  URL_HASH MD5=f4294e5de7ebb20f9a695155660f1afd
)
FetchContent_MakeAvailable(ssl_content)
add_library(OpenSSL::SSL ALIAS ssl)
add_library(OpenSSL::Crypto ALIAS crypto)

add_library (server 
server/server.cpp)

target_link_libraries(server 
OpenSSL::Crypto
OpenSSL::SSL
)