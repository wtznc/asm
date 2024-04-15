#!/bin/bash
echo "Analyzing the binary: $1"
echo "Header Info:"
otool -hv "$1"
echo "Load Commands:"
otool -l "$1"