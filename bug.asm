mov eax, [ebx+ecx*4] ;This instruction can cause an exception if the address calculated by ebx+ecx*4 is not a valid memory address.  This often happens when ecx is too large or when ebx points to an invalid memory location.

mov DWORD PTR [eax], 10 ; This instruction can also throw an exception if the address in eax is invalid or if the program doesn't have write permissions to that address.