# Tested on macOS Catalina 10.15.7


#!/bin/bash

# Print Operating System details
echo "Operating System:"
uname -a

# Print architecture type
echo "Architecture:"
uname -m

# Check for available compilers
echo "Available Compilers:"
which gcc &>/dev/null && echo "gcc: $(gcc --version | head -n1)" || echo "gcc not found"
which clang &>/dev/null && echo "clang: $(clang --version | head -n1)" || echo "clang not found"
which g++ &>/dev/null && echo "g++: $(g++ --version | head -n1)" || echo "g++ not found"

# Check for library paths and linker settings
echo "Library paths (LD_LIBRARY_PATH):"
echo $LD_LIBRARY_PATH

# Environment variables
echo "Important Environment Variables:"
echo "PATH: $PATH"
echo "LD_LIBRARY_PATH: $LD_LIBRARY_PATH"

# Processor and hardware capabilities - Using sysctl instead of lscpu
echo "Processor and hardware capabilities:"
sysctl -a | grep "cpu"

# Additional hardware details like number of processing cores, useful for make -j
echo "Number of Processing Cores:"
sysctl -n hw.ncpu
