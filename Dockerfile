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
RUN as -o exit.o exit.s && ld -o exit exit.o -no-pie
RUN chmod +x analyze_elf.sh


# Set the command to execute when the container starts.
# Here, running the program directly and then printing the exit status
CMD ./analyze_elf.sh exit && ./exit; echo "Program exited with status: $?"



