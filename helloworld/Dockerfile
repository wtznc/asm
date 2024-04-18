FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    gdb \
    build-essential

# Set the working directory inside the container
WORKDIR /app

# Copy your assembly source file into the container
COPY exit.s /app/
COPY analyze_elf.sh /app/

# Assemble the source file into an object file and link it to create the executable
# Use verbose flags for debugging
RUN as --32 -o exit.o exit.s || (echo "Assembly failed" && false)
RUN ld -m elf_i386 -o exit exit.o -no-pie -v || (echo "Linking failed" && false)

# Make the analysis script executable
RUN chmod +x analyze_elf.sh

# Prepare a GDB script to print registers
RUN echo "break _start" > gdb_commands
RUN echo "run" >> gdb_commands
RUN echo "info registers" >> gdb_commands
RUN echo "continue" >> gdb_commands
RUN echo "quit" >> gdb_commands



# Ensure the 'exit' executable exists and make it executable
RUN ls -al /app && chmod +x exit || (echo "Making 'exit' executable failed" && false)

# Set the command to execute when the container starts.
CMD gdb -x gdb_commands ./exit && ./analyze_elf.sh exit; echo "Program exited with status: $?"
