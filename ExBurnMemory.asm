kd> uf ExBurnMemory
nt!ExBurnMemory:
fffff801`476058ac 4c8bda          mov     r11,rdx
fffff801`476058af 488bc2          mov     rax,rdx
fffff801`476058b2 488d5120        lea     rdx,[rcx+20h]
fffff801`476058b6 4c8b5208        mov     r10,qword ptr [rdx+8]

nt!ExBurnMemory+0xe:
fffff801`476058ba 418b4a10        mov     ecx,dword ptr [r10+10h]
fffff801`476058be 83f902          cmp     ecx,2
fffff801`476058c1 7405            je      nt!ExBurnMemory+0x1c (fffff801`476058c8)  Branch

nt!ExBurnMemory+0x17:
fffff801`476058c3 83f905          cmp     ecx,5
fffff801`476058c6 7517            jne     nt!ExBurnMemory+0x33 (fffff801`476058df)  Branch

nt!ExBurnMemory+0x1c:
fffff801`476058c8 498b4a20        mov     rcx,qword ptr [r10+20h]
fffff801`476058cc 4885c9          test    rcx,rcx
fffff801`476058cf 740e            je      nt!ExBurnMemory+0x33 (fffff801`476058df)  Branch

nt!ExBurnMemory+0x25:
fffff801`476058d1 483bc8          cmp     rcx,rax
fffff801`476058d4 7719            ja      nt!ExBurnMemory+0x43 (fffff801`476058ef)  Branch

nt!ExBurnMemory+0x2a:
fffff801`476058d6 45894210        mov     dword ptr [r10+10h],r8d
fffff801`476058da 482bc1          sub     rax,rcx
fffff801`476058dd 7409            je      nt!ExBurnMemory+0x3c (fffff801`476058e8)  Branch

nt!ExBurnMemory+0x33:
fffff801`476058df 4d8b5208        mov     r10,qword ptr [r10+8]
fffff801`476058e3 4c3bd2          cmp     r10,rdx
fffff801`476058e6 75d2            jne     nt!ExBurnMemory+0xe (fffff801`476058ba)  Branch

nt!ExBurnMemory+0x3c:
fffff801`476058e8 4c2bd8          sub     r11,rax
fffff801`476058eb 498bc3          mov     rax,r11
fffff801`476058ee c3              ret

nt!ExBurnMemory+0x43:
fffff801`476058ef 8bd0            mov     edx,eax
fffff801`476058f1 482bca          sub     rcx,rdx
fffff801`476058f4 49894a20        mov     qword ptr [r10+20h],rcx
fffff801`476058f8 49034a18        add     rcx,qword ptr [r10+18h]
fffff801`476058fc 49894918        mov     qword ptr [r9+18h],rcx
fffff801`47605900 49895120        mov     qword ptr [r9+20h],rdx
fffff801`47605904 45894110        mov     dword ptr [r9+10h],r8d
fffff801`47605908 498b02          mov     rax,qword ptr [r10]
fffff801`4760590b 4c395008        cmp     qword ptr [rax+8],r10
fffff801`4760590f 7512            jne     nt!ExBurnMemory+0x77 (fffff801`47605923)  Branch

nt!ExBurnMemory+0x65:
fffff801`47605911 498901          mov     qword ptr [r9],rax
fffff801`47605914 4d895108        mov     qword ptr [r9+8],r10
fffff801`47605918 4c894808        mov     qword ptr [rax+8],r9
fffff801`4760591c 33c0            xor     eax,eax
fffff801`4760591e 4d890a          mov     qword ptr [r10],r9
fffff801`47605921 ebc5            jmp     nt!ExBurnMemory+0x3c (fffff801`476058e8)  Branch

nt!ExBurnMemory+0x77:
fffff801`47605923 b903000000      mov     ecx,3
fffff801`47605928 cd29            int     29h
fffff801`4760592a cc              int     3
fffff801`4760592b cc              int     3
fffff801`4760592c cc              int     3
fffff801`4760592d cc              int     3
fffff801`4760592e cc              int     3
fffff801`4760592f cc              int     3
fffff801`47605930 488bc4          mov     rax,rsp
fffff801`47605933 48895808        mov     qword ptr [rax+8],rbx
fffff801`47605937 48896810        mov     qword ptr [rax+10h],rbp
fffff801`4760593b 48897018        mov     qword ptr [rax+18h],rsi
fffff801`4760593f 57              push    rdi
fffff801`47605940 4883ec30        sub     rsp,30h
fffff801`47605944 488360f000      and     qword ptr [rax-10h],0
fffff801`47605949 488d7120        lea     rsi,[rcx+20h]
fffff801`4760594d 488360e800      and     qword ptr [rax-18h],0
fffff801`47605952 488b1e          mov     rbx,qword ptr [rsi]
fffff801`47605955 eb32            jmp     nt!ExpRevokeBootLoaderPagePrivileges+0x59 (fffff801`47605989)  Branch

nt!ExpRevokeBootLoaderPagePrivileges+0x27:
fffff801`47605957 837b1004        cmp     dword ptr [rbx+10h],4
fffff801`4760595b 7529            jne     nt!ExpRevokeBootLoaderPagePrivileges+0x56 (fffff801`47605986)  Branch

nt!ExpRevokeBootLoaderPagePrivileges+0x2d:
fffff801`4760595d 488b7b18        mov     rdi,qword ptr [rbx+18h]
fffff801`47605961 488d6fff        lea     rbp,[rdi-1]
fffff801`47605965 48036b20        add     rbp,qword ptr [rbx+20h]
fffff801`47605969 eb16            jmp     nt!ExpRevokeBootLoaderPagePrivileges+0x51 (fffff801`47605981)  Branch

nt!ExpRevokeBootLoaderPagePrivileges+0x3b:
fffff801`4760596b 41b810000000    mov     r8d,10h
fffff801`47605971 488d542420      lea     rdx,[rsp+20h]
fffff801`47605976 488bcf          mov     rcx,rdi
fffff801`47605979 e8827c89ff      call    nt!KeSetPagePrivilege (fffff801`46e9d600)
fffff801`4760597e 48ffc7          inc     rdi

nt!ExpRevokeBootLoaderPagePrivileges+0x51:
fffff801`47605981 483bfd          cmp     rdi,rbp
fffff801`47605984 76e5            jbe     nt!ExpRevokeBootLoaderPagePrivileges+0x3b (fffff801`4760596b)  Branch

nt!ExpRevokeBootLoaderPagePrivileges+0x56:
fffff801`47605986 488b1b          mov     rbx,qword ptr [rbx]

nt!ExpRevokeBootLoaderPagePrivileges+0x59:
fffff801`47605989 483bde          cmp     rbx,rsi
fffff801`4760598c 75c9            jne     nt!ExpRevokeBootLoaderPagePrivileges+0x27 (fffff801`47605957)  Branch

nt!ExpRevokeBootLoaderPagePrivileges+0x5e:
fffff801`4760598e 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff801`47605993 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff801`47605998 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff801`4760599d 4883c430        add     rsp,30h
fffff801`476059a1 5f              pop     rdi
fffff801`476059a2 c3              ret
