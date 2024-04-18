# how to build

## executables
```docker build -t asm-app . && docker run --rm asm-app```

## to run ./analyze_macho.sh 

$: ```chmod +x analyze_macho.sh```

$: ```./analyze_macho.sh exit {or any executable file} ```

32bit x86 supports multiple registers:
- eax,ebx,ecx,edx,esi,edi
- ax,bx,cx,dx,si,di
- al,bl,cl,dl


64bit x86 supports multiple registers:
- rax,rbx,rcx,rdx,rsi,rdi
- r8,r9,r10,r11,r12,r13,r14,r15

## to run ./analyze_elf.sh
