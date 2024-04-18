## todo:
- [] readme section listing all the files, their purpose and how to build and run them
- [] a new section listing differences between registers among 32bit and 64bit x86
- [] support for 64bit x86 and 32bit x86
- [] how to build it at once to make it work on mac and linux - custom build script? e.g.

# table of content:
- [how to build](#how-to-build)
- [executables](#executables)
- [Intel 80386 Architecture Registers](#intel-80386-architecture-registers)
- [to run ./analyze_elf.sh](#to-run-analyze_elfsh)



## how to build
- table here with all the files and their purpose and how to build them



## executables
```docker build -t asm-app . && docker run --rm asm-app```


### Intel 80386 Architecture Registers

#### General-Purpose Registers (GPRs)
- **EAX** - Accumulator Register
- **EBX** - Base Register
- **ECX** - Count Register
- **EDX** - Data Register
- **ESI** - Source Index
- **EDI** - Destination Index
- **EBP** - Base Pointer
- **ESP** - Stack Pointer

#### Segment Registers
- **CS** - Code Segment
- **DS** - Data Segment
- **SS** - Stack Segment
- **ES** - Extra Segment
- **FS** - More Segment
- **GS** - Another Segment

#### Special Registers
- **EIP** - Instruction Pointer
- **EFLAGS** - Flags Register



64bit x86 supports multiple registers:
- todo: list them here


## to run ./analyze_elf.sh


