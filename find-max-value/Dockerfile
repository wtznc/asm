FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    gdb \
    build-essential

# Set the working directory inside the container
WORKDIR /app

# Copy your assembly source file into the container
COPY max.s /app/
COPY analyze_elf.sh /app/


RUN as --32 -o max.o max.s || (echo "Assembly failed" && false)
RUN ld -m elf_i386 -o max max.o -no-pie -v || (echo "Linking failed" && false)

# Make the analysis script executable
RUN chmod +x analyze_elf.sh

# Prepare a GDB script to print registers
RUN echo "break print_result" > gdb_commands
RUN echo "run" >> gdb_commands
RUN echo "info registers" >> gdb_commands
RUN echo "continue" >> gdb_commands
RUN echo "quit" >> gdb_commands



# Ensure the 'exit' executable exists and make it executable
RUN ls -al /app && chmod +x max || (echo "Making 'max' executable failed" && false)

# Set the command to execute when the container starts.
CMD gdb -x gdb_commands ./max && ./analyze_elf.sh max; echo "Program exited with status: $?"
