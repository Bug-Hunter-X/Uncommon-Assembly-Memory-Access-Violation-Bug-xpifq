section .data

section .bss
    buffer resd 100 ; Reserve space for 100 DWORDs

section .text
    global _start

_start:
    ;Input Validation:
    cmp ecx, 100 ;Check if ecx is within the bounds of the buffer
    jg error_handler ;Jump to error handler if ecx is out of bounds

    mov ebx, buffer ;Point ebx to the beginning of the buffer
    mov eax, [ebx+ecx*4] ;Access the memory location after checking

    ; ... rest of the code ...

    mov DWORD PTR [eax], 10 ;Write after checking the bounds

    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80

error_handler:
    ;Handle the error appropriately (e.g., print an error message or exit)
    mov eax, 1 ; sys_exit
    mov ebx, 1 ; exit code 1
    int 0x80