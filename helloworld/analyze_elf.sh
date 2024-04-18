#!/bin/bash
echo "Analyzing the binary: $1"

# Display the ELF header information
echo "Header Info:"
readelf -h "$1"

# Display the program headers
echo "Program Headers:"
readelf -l "$1"

# Display the section headers
echo "Section Headers:"
readelf -S "$1"
