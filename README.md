# Uncommon Assembly Memory Access Violation Bug

This repository demonstrates a common yet subtle bug in assembly programming related to memory access violations.  The bug arises from incorrect address calculations, leading to exceptions when the program attempts to access invalid memory locations.  The solution showcases how to mitigate this by adding input validation and bounds checking.

## Bug Description

The `bug.asm` file contains assembly code that is prone to memory access violations due to potential issues with memory address calculations. The specific problems are:

1. **Address Calculation Error:** The instruction `mov eax, [ebx+ecx*4]` can cause exceptions if the resulting address falls outside the allocated memory space or points to a protected area.
2. **Write Access Violation:**  `mov DWORD PTR [eax], 10` can throw an exception if the address in `eax` is invalid, or if the program lacks write permissions to that memory region.

## Solution

The `bugSolution.asm` file provides a corrected version that addresses the potential problems described above through appropriate input validation and boundary checking.