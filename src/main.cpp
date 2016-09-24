#include <iostream>

#include "version.h"

int main (int argc, char *argv[])
{
  // Print out the project version. This variable is dynamically defined by
  // CMake using ${PROJECT_NAME} set in the main CMakeLists.txt and
  // template found in CMakeModules/version.h.mk.
  std::cout << FB_VERSION << std::endl;

  return 0;
}
