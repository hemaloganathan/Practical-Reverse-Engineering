0: kd> uf KiInsertQueueApc
nt!KiInsertQueueApc:
fffff805`1ee5d0f0 488b5108        mov     rdx,qword ptr [rcx+8]
fffff805`1ee5d0f4 4533c9          xor     r9d,r9d
fffff805`1ee5d0f7 44384950        cmp     byte ptr [rcx+50h],r9b
fffff805`1ee5d0fb 750d            jne     nt!KiInsertQueueApc+0x1a (fffff805`1ee5d10a)  Branch

nt!KiInsertQueueApc+0xd:
fffff805`1ee5d0fd 44388a4a020000  cmp     byte ptr [rdx+24Ah],r9b
fffff805`1ee5d104 0f85d5000000    jne     nt!KiInsertQueueApc+0xef (fffff805`1ee5d1df)  Branch

nt!KiInsertQueueApc+0x1a:
fffff805`1ee5d10a 8a824a020000    mov     al,byte ptr [rdx+24Ah]
fffff805`1ee5d110 884150          mov     byte ptr [rcx+50h],al
fffff805`1ee5d113 b898000000      mov     eax,98h

nt!KiInsertQueueApc+0x28:
fffff805`1ee5d118 4c8d0410        lea     r8,[rax+rdx]
fffff805`1ee5d11c 8a4151          mov     al,byte ptr [rcx+51h]
fffff805`1ee5d11f 4c394930        cmp     qword ptr [rcx+30h],r9
fffff805`1ee5d123 0f8482000000    je      nt!KiInsertQueueApc+0xbb (fffff805`1ee5d1ab)  Branch

nt!KiInsertQueueApc+0x39:
fffff805`1ee5d129 84c0            test    al,al
fffff805`1ee5d12b 752b            jne     nt!KiInsertQueueApc+0x68 (fffff805`1ee5d158)  Branch

nt!KiInsertQueueApc+0x3d:
fffff805`1ee5d12d 480fbed0        movsx   rdx,al
fffff805`1ee5d131 4883c110        add     rcx,10h
fffff805`1ee5d135 48c1e204        shl     rdx,4
fffff805`1ee5d139 4903d0          add     rdx,r8
fffff805`1ee5d13c 488b4208        mov     rax,qword ptr [rdx+8]
fffff805`1ee5d140 483910          cmp     qword ptr [rax],rdx
fffff805`1ee5d143 0f85a37f1a00    jne     nt!KiInsertQueueApc+0x1a7ffc (fffff805`1f0050ec)  Branch

nt!KiInsertQueueApc+0x59:
fffff805`1ee5d149 488911          mov     qword ptr [rcx],rdx
fffff805`1ee5d14c 48894108        mov     qword ptr [rcx+8],rax
fffff805`1ee5d150 488908          mov     qword ptr [rax],rcx
fffff805`1ee5d153 48894a08        mov     qword ptr [rdx+8],rcx
fffff805`1ee5d157 c3              ret

nt!KiInsertQueueApc+0x68:
fffff805`1ee5d158 4c8b4920        mov     r9,qword ptr [rcx+20h]
fffff805`1ee5d15c 4c8d151d395a00  lea     r10,[nt!KiSchedulerApcTerminate (fffff805`1f400a80)]
fffff805`1ee5d163 4d3bca          cmp     r9,r10
fffff805`1ee5d166 7532            jne     nt!KiInsertQueueApc+0xaa (fffff805`1ee5d19a)  Branch

nt!KiInsertQueueApc+0x78:
fffff805`1ee5d168 808ac200000002  or      byte ptr [rdx+0C2h],2
fffff805`1ee5d16f 4883c110        add     rcx,10h
fffff805`1ee5d173 480fbed0        movsx   rdx,al
fffff805`1ee5d177 48c1e204        shl     rdx,4
fffff805`1ee5d17b 4903d0          add     rdx,r8
fffff805`1ee5d17e 488b02          mov     rax,qword ptr [rdx]
fffff805`1ee5d181 48395008        cmp     qword ptr [rax+8],rdx
fffff805`1ee5d185 0f85617f1a00    jne     nt!KiInsertQueueApc+0x1a7ffc (fffff805`1f0050ec)  Branch

nt!KiInsertQueueApc+0x9b:
fffff805`1ee5d18b 488901          mov     qword ptr [rcx],rax
fffff805`1ee5d18e 48895108        mov     qword ptr [rcx+8],rdx
fffff805`1ee5d192 48894808        mov     qword ptr [rax+8],rcx
fffff805`1ee5d196 48890a          mov     qword ptr [rdx],rcx
fffff805`1ee5d199 c3              ret

nt!KiInsertQueueApc+0xaa:
fffff805`1ee5d19a 4c8d153f6c8000  lea     r10,[nt!KeSpecialUserApcKernelRoutine (fffff805`1f663de0)]
fffff805`1ee5d1a1 4d3bca          cmp     r9,r10
fffff805`1ee5d1a4 7587            jne     nt!KiInsertQueueApc+0x3d (fffff805`1ee5d12d)  Branch

nt!KiInsertQueueApc+0xb6:
fffff805`1ee5d1a6 e91d7f1a00      jmp     nt!KiInsertQueueApc+0x1a7fd8 (fffff805`1f0050c8)  Branch

nt!KiInsertQueueApc+0xbb:
fffff805`1ee5d1ab 480fbed0        movsx   rdx,al
fffff805`1ee5d1af 48c1e204        shl     rdx,4
fffff805`1ee5d1b3 4903d0          add     rdx,r8
fffff805`1ee5d1b6 488b4208        mov     rax,qword ptr [rdx+8]

nt!KiInsertQueueApc+0xca:
fffff805`1ee5d1ba 483bc2          cmp     rax,rdx
fffff805`1ee5d1bd 752a            jne     nt!KiInsertQueueApc+0xf9 (fffff805`1ee5d1e9)  Branch

nt!KiInsertQueueApc+0xcf:
fffff805`1ee5d1bf 488b10          mov     rdx,qword ptr [rax]
fffff805`1ee5d1c2 4883c110        add     rcx,10h
fffff805`1ee5d1c6 48394208        cmp     qword ptr [rdx+8],rax
fffff805`1ee5d1ca 0f851c7f1a00    jne     nt!KiInsertQueueApc+0x1a7ffc (fffff805`1f0050ec)  Branch

nt!KiInsertQueueApc+0xe0:
fffff805`1ee5d1d0 488911          mov     qword ptr [rcx],rdx
fffff805`1ee5d1d3 48894108        mov     qword ptr [rcx+8],rax
fffff805`1ee5d1d7 48894a08        mov     qword ptr [rdx+8],rcx
fffff805`1ee5d1db 488908          mov     qword ptr [rax],rcx
fffff805`1ee5d1de c3              ret

nt!KiInsertQueueApc+0xef:
fffff805`1ee5d1df b858020000      mov     eax,258h
fffff805`1ee5d1e4 e92fffffff      jmp     nt!KiInsertQueueApc+0x28 (fffff805`1ee5d118)  Branch

nt!KiInsertQueueApc+0xf9:
fffff805`1ee5d1e9 4c394820        cmp     qword ptr [rax+20h],r9
fffff805`1ee5d1ed 74d0            je      nt!KiInsertQueueApc+0xcf (fffff805`1ee5d1bf)  Branch

nt!KiInsertQueueApc+0xff:
fffff805`1ee5d1ef 488b4008        mov     rax,qword ptr [rax+8]
fffff805`1ee5d1f3 ebc5            jmp     nt!KiInsertQueueApc+0xca (fffff805`1ee5d1ba)  Branch

nt!KiInsertQueueApc+0x1a7fd8:
fffff805`1f0050c8 480fbec0        movsx   rax,al
fffff805`1f0050cc 48c1e004        shl     rax,4
fffff805`1f0050d0 4c03c0          add     r8,rax
fffff805`1f0050d3 498b00          mov     rax,qword ptr [r8]
fffff805`1f0050d6 eb03            jmp     nt!KiInsertQueueApc+0x1a7feb (fffff805`1f0050db)  Branch

nt!KiInsertQueueApc+0x1a7fe8:
fffff805`1f0050d8 488b00          mov     rax,qword ptr [rax]

nt!KiInsertQueueApc+0x1a7feb:
fffff805`1f0050db 493bc0          cmp     rax,r8
fffff805`1f0050de 75f8            jne     nt!KiInsertQueueApc+0x1a7fe8 (fffff805`1f0050d8)  Branch

nt!KiInsertQueueApc+0x1a7ff0:
fffff805`1f0050e0 808ac200000001  or      byte ptr [rdx+0C2h],1
fffff805`1f0050e7 e9d380e5ff      jmp     nt!KiInsertQueueApc+0xcf (fffff805`1ee5d1bf)  Branch

nt!KiInsertQueueApc+0x1a7ffc:
fffff805`1f0050ec b903000000      mov     ecx,3
fffff805`1f0050f1 cd29            int     29h
fffff805`1f0050f3 cc              int     3
fffff805`1f0050f4 48c1e812        shr     rax,12h
fffff805`1f0050f8 8b4484fc        mov     eax,dword ptr [rsp+rax*4-4]
fffff805`1f0050fc 8902            mov     dword ptr [rdx],eax
fffff805`1f0050fe b001            mov     al,1
fffff805`1f005100 e92f81e5ff      jmp     nt!KiIsProcessTerminationRequested+0x38 (fffff805`1ee5d234)  Branch

nt!KiIsProcessTerminationRequested+0x38:
fffff805`1ee5d234 488b4c2410      mov     rcx,qword ptr [rsp+10h]
fffff805`1ee5d239 4833cc          xor     rcx,rsp
fffff805`1ee5d23c e80f011500      call    nt!_security_check_cookie (fffff805`1efad350)
fffff805`1ee5d241 4883c428        add     rsp,28h
fffff805`1ee5d245 c3              ret
