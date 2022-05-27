# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.22.1)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(ssl_content-populate NONE)



include(ExternalProject)
ExternalProject_Add(ssl_content-populate
                     "UPDATE_DISCONNECTED" "False" "URL" "https://github.com/janbar/openssl-cmake/archive/refs/tags/1.1.1k-20210430.tar.gz" "URL_HASH" "MD5=f4294e5de7ebb20f9a695155660f1afd"
                    SOURCE_DIR          "/home/haost/prodject/C++/clientss/build/_deps/ssl_content-src"
                    BINARY_DIR          "/home/haost/prodject/C++/clientss/build/_deps/ssl_content-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
)


