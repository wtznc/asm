# x86-32 (AT&T Syntax) Assembly Language

This repository contains a collection of x86-32 assembly language programs written in AT&T syntax. The programs are designed to run on a 32-bit x86 processor. The repository includes a Makefile for building the programs and a Dockerfile for running them in a containerized environment.


The goal of this repository is to create a comprehensive collection of notes, examples, and explanations as I delve into the details of Assembly language and the x86 architecture. By documenting my learning process, I aim to solidify my understanding and provide a structured path for others who are also interested in this fundamental programming language and processor architecture.


## Table of Contents
- [Introduction](#introduction)
- [Requirements](#requirements)
- [How to Build and Run](#how-to-build-and-run)
- [Contributing](#contributing)
- [References](#references)
- [TODO](#to-do)


## TO DO:
-  **Mac OS Support**: Provide specific instructions and necessary scripts or modifications to support Mac OS.

- **Expand to x86-64**: Gradually include more detailed examples and notes specific to x86-64 as foundational knowledge solidifies.


## Repository Structure
| File                                                       | Purpose                                                                                                  | Key Concepts Demonstrated     |
|------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|-------------------------------|
| [`helloworld/exit.s`](https://github.com/wtznc/asm/helloworld/exit.s) | Outputs a "Hello, world!" message and then exits with a specific status code, demonstrating basic system call usage for output and program termination in Assembly. | System calls, program exit    |
| [`find-max-value/max.s`](https://github.com/wtznc/asm/find-max-value/max.s) | Finds and returns the maximum value from a predefined array of integers, showcasing the use of loops and conditionals in Assembly language. | Loops, conditionals, indexing |
| [`tools/system_diagnostics.sh`](https://github.com/wtznc/asm/system_diagnostics.sh) | Checks and displays system configurations including OS details, compilers available, and processor information, ensuring the environment is set up correctly for development. | System configuration and diagnostics |
| [`tools/display_elf_info.sh`](https://github.com/wtznc/asm/display_elf_info.sh) | Displays detailed information about ELF files including header, program headers, and section headers, aiding in binary analysis. | ELF file structure analysis |





## Requirements

This project requires Docker to ensure that the Assembly code can be built and run in a controlled environment without needing to install specific assemblers and linkers on your host machine.

**Required Tools:**
- **Docker**: You can download Docker from [Docker's official website](https://www.docker.com/products/docker-desktop).

## How to Build and Run

The repository includes a Dockerfile that sets up the environment, compiles the Assembly code, and runs it within a Docker container. Follow these steps to build and run applications in the containerized environment.:

1. **Clone the Repository and Navigate to the Directory:**
   First, clone the repository to your local machine and then change into the directory containing the cloned repository:
   ```bash
   git clone <repository-url>
   cd <repository-name>
    ```

3. **Build the Docker Image:**
    Build the Docker image using the provided Dockerfile:
    ```bash
    docker build -t x86-32-assembly .
    ```
    This command will create a Docker image named `x86-32-assembly` based on the instructions in the Dockerfile.

4. **Run the Docker Container:**
    Run the Docker container to compile and execute the Assembly programs:
    ```bash
    docker run -it x86-32-assembly
    ```
    This command will start a Docker container based on the `x86-32-assembly` image and open an interactive terminal within the container.


## Contributing
If you would like to contribute to this repository, please feel free to fork the repo, make your changes, and submit a pull request. I appreciate any contributions that improve the quality and accuracy of the material.


## References

- **"Programming from the Ground Up" by Jonathan Bartlett** 

