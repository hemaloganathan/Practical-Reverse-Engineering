0: kd> uf IoPageRead
nt!IoPageRead:
fffff805`1ef7a390 4883ec48        sub     rsp,48h
fffff805`1ef7a394 4c8bd1          mov     r10,rcx
fffff805`1ef7a397 4d8bd8          mov     r11,r8
fffff805`1ef7a39a 33c9            xor     ecx,ecx
fffff805`1ef7a39c 41f6c203        test    r10b,3
fffff805`1ef7a3a0 0f859e520b00    jne     nt!IoPageRead+0xb52b4 (fffff805`1f02f644)  Branch

nt!IoPageRead+0x16:
fffff805`1ef7a3a6 488bc2          mov     rax,rdx
fffff805`1ef7a3a9 4c8bc2          mov     r8,rdx
fffff805`1ef7a3ac 83e001          and     eax,1
fffff805`1ef7a3af 4983e0fe        and     r8,0FFFFFFFFFFFFFFFEh
fffff805`1ef7a3b3 4885c0          test    rax,rax
fffff805`1ef7a3b6 4c0f44c2        cmove   r8,rdx
fffff805`1ef7a3ba 8bd1            mov     edx,ecx
fffff805`1ef7a3bc 83ca04          or      edx,4
fffff805`1ef7a3bf 4885c0          test    rax,rax
fffff805`1ef7a3c2 0f44d1          cmove   edx,ecx
fffff805`1ef7a3c5 498bc8          mov     rcx,r8
fffff805`1ef7a3c8 8bc2            mov     eax,edx
fffff805`1ef7a3ca 83e102          and     ecx,2
fffff805`1ef7a3cd 83c808          or      eax,8
fffff805`1ef7a3d0 4885c9          test    rcx,rcx
fffff805`1ef7a3d3 0f44c2          cmove   eax,edx
fffff805`1ef7a3d6 498bd0          mov     rdx,r8
fffff805`1ef7a3d9 4883e2fd        and     rdx,0FFFFFFFFFFFFFFFDh
fffff805`1ef7a3dd 4885c9          test    rcx,rcx
fffff805`1ef7a3e0 498bca          mov     rcx,r10
fffff805`1ef7a3e3 490f44d0        cmove   rdx,r8
fffff805`1ef7a3e7 488364243000    and     qword ptr [rsp+30h],0
fffff805`1ef7a3ed 89442428        mov     dword ptr [rsp+28h],eax
fffff805`1ef7a3f1 4d8bc3          mov     r8,r11
fffff805`1ef7a3f4 488b442470      mov     rax,qword ptr [rsp+70h]
fffff805`1ef7a3f9 4889442420      mov     qword ptr [rsp+20h],rax
fffff805`1ef7a3fe e83547ecff      call    nt!IoPageReadEx (fffff805`1ee3eb38)
fffff805`1ef7a403 4883c448        add     rsp,48h
fffff805`1ef7a407 c3              ret

nt!IoPageRead+0xb52b4:
fffff805`1f02f644 498bc2          mov     rax,r10
fffff805`1f02f647 4983e2fc        and     r10,0FFFFFFFFFFFFFFFCh
fffff805`1f02f64b 83e001          and     eax,1
fffff805`1f02f64e 48f7d8          neg     rax
fffff805`1f02f651 1bc9            sbb     ecx,ecx
fffff805`1f02f653 83c102          add     ecx,2
fffff805`1f02f656 e94badf4ff      jmp     nt!IoPageRead+0x16 (fffff805`1ef7a3a6)  Branch

-----------------

0: kd> uf IoPageReadEx
nt!IoPageReadEx:
fffff805`1ee3eb38 488bc4          mov     rax,rsp
fffff805`1ee3eb3b 48895808        mov     qword ptr [rax+8],rbx
fffff805`1ee3eb3f 48896810        mov     qword ptr [rax+10h],rbp
fffff805`1ee3eb43 48897020        mov     qword ptr [rax+20h],rsi
fffff805`1ee3eb47 4c894018        mov     qword ptr [rax+18h],r8
fffff805`1ee3eb4b 57              push    rdi
fffff805`1ee3eb4c 4154            push    r12
fffff805`1ee3eb4e 4155            push    r13
fffff805`1ee3eb50 4156            push    r14
fffff805`1ee3eb52 4157            push    r15
fffff805`1ee3eb54 4883ec20        sub     rsp,20h
fffff805`1ee3eb58 8b5c2478        mov     ebx,dword ptr [rsp+78h]
fffff805`1ee3eb5c 488bfa          mov     rdi,rdx
fffff805`1ee3eb5f 8bc3            mov     eax,ebx
fffff805`1ee3eb61 8bd3            mov     edx,ebx
fffff805`1ee3eb63 d1e8            shr     eax,1
fffff805`1ee3eb65 448be3          mov     r12d,ebx
fffff805`1ee3eb68 f6d0            not     al
fffff805`1ee3eb6a 4183e401        and     r12d,1
fffff805`1ee3eb6e 2401            and     al,1
fffff805`1ee3eb70 4d8be9          mov     r13,r9
fffff805`1ee3eb73 440fb6c0        movzx   r8d,al
fffff805`1ee3eb77 4c8bf1          mov     r14,rcx
fffff805`1ee3eb7a 418ac0          mov     al,r8b
fffff805`1ee3eb7d 0c02            or      al,2
fffff805`1ee3eb7f 80e208          and     dl,8
fffff805`1ee3eb82 440fb6f8        movzx   r15d,al
fffff805`1ee3eb86 450f44f8        cmove   r15d,r8d
fffff805`1ee3eb8a e8f1760900      call    nt!IoGetRelatedDeviceObject (fffff805`1eed6280)
fffff805`1ee3eb8f 4c8b4c2448      mov     r9,qword ptr [rsp+48h]
fffff805`1ee3eb94 80e304          and     bl,4
fffff805`1ee3eb97 f6db            neg     bl
fffff805`1ee3eb99 488bc8          mov     rcx,rax
fffff805`1ee3eb9c 488be8          mov     rbp,rax
fffff805`1ee3eb9f 8a504c          mov     dl,byte ptr [rax+4Ch]
fffff805`1ee3eba2 1bf6            sbb     esi,esi
fffff805`1ee3eba4 81e6c0030000    and     esi,3C0h
fffff805`1ee3ebaa 4533c0          xor     r8d,r8d
fffff805`1ee3ebad 83c643          add     esi,43h
fffff805`1ee3ebb0 e80b9d0900      call    nt!IopAllocateIrpExReturn (fffff805`1eed88c0)
fffff805`1ee3ebb5 488bd8          mov     rbx,rax
fffff805`1ee3ebb8 4885c0          test    rax,rax
fffff805`1ee3ebbb 0f8459c11b00    je      nt!IoPageReadEx+0x1bc1e2 (fffff805`1effad1a)  Branch

nt!IoPageReadEx+0x89:
fffff805`1ee3ebc1 498bce          mov     rcx,r14
fffff805`1ee3ebc4 e8db0f0000      call    nt!MmIsFileObjectAPagingFile (fffff805`1ee3fba4)
fffff805`1ee3ebc9 85c0            test    eax,eax
fffff805`1ee3ebcb 751b            jne     nt!IoPageReadEx+0xb0 (fffff805`1ee3ebe8)  Branch

nt!IoPageReadEx+0x95:
fffff805`1ee3ebcd 0fb7470a        movzx   eax,word ptr [rdi+0Ah]
fffff805`1ee3ebd1 b906000000      mov     ecx,6
fffff805`1ee3ebd6 660fa3c8        bt      ax,cx
fffff805`1ee3ebda 0f92c1          setb    cl
fffff805`1ee3ebdd 40f6c640        test    sil,40h
fffff805`1ee3ebe1 0f95c0          setne   al
fffff805`1ee3ebe4 84c8            test    al,cl
fffff805`1ee3ebe6 7404            je      nt!IoPageReadEx+0xb4 (fffff805`1ee3ebec)  Branch

nt!IoPageReadEx+0xb0:
fffff805`1ee3ebe8 804b4720        or      byte ptr [rbx+47h],20h

nt!IoPageReadEx+0xb4:
fffff805`1ee3ebec 4c8b83b8000000  mov     r8,qword ptr [rbx+0B8h]
fffff805`1ee3ebf3 897310          mov     dword ptr [rbx+10h],esi
fffff805`1ee3ebf6 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff805`1ee3ebff e8cc6f0900      call    nt!PsGetIoPriorityThread (fffff805`1eed5bd0)
fffff805`1ee3ec04 41b902000000    mov     r9d,2
fffff805`1ee3ec0a 413bc1          cmp     eax,r9d
fffff805`1ee3ec0d 0f8ce6000000    jl      nt!IoPageReadEx+0x1c1 (fffff805`1ee3ecf9)  Branch

nt!IoPageReadEx+0xdb:
fffff805`1ee3ec13 b903000000      mov     ecx,3
fffff805`1ee3ec18 453af9          cmp     r15b,r9b
fffff805`1ee3ec1b 0f835fc11b00    jae     nt!IoPageReadEx+0x1bc248 (fffff805`1effad80)  Branch

nt!IoPageReadEx+0xe9:
fffff805`1ee3ec21 c1e011          shl     eax,11h
fffff805`1ee3ec24 0500000200      add     eax,20000h
fffff805`1ee3ec29 48897b08        mov     qword ptr [rbx+8],rdi
fffff805`1ee3ec2d 0bc6            or      eax,esi
fffff805`1ee3ec2f c6434000        mov     byte ptr [rbx+40h],0
fffff805`1ee3ec33 488b742470      mov     rsi,qword ptr [rsp+70h]
fffff805`1ee3ec38 894310          mov     dword ptr [rbx+10h],eax
fffff805`1ee3ec3b 48897348        mov     qword ptr [rbx+48h],rsi
fffff805`1ee3ec3f 4c896b50        mov     qword ptr [rbx+50h],r13
fffff805`1ee3ec43 8b472c          mov     eax,dword ptr [rdi+2Ch]
fffff805`1ee3ec46 48034720        add     rax,qword ptr [rdi+20h]
fffff805`1ee3ec4a 48894370        mov     qword ptr [rbx+70h],rax
fffff805`1ee3ec4e 4c89b3c0000000  mov     qword ptr [rbx+0C0h],r14
fffff805`1ee3ec55 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff805`1ee3ec5e 48898398000000  mov     qword ptr [rbx+98h],rax
fffff805`1ee3ec65 418848b8        mov     byte ptr [r8-48h],cl
fffff805`1ee3ec69 488bcb          mov     rcx,rbx
fffff805`1ee3ec6c 4d8970e8        mov     qword ptr [r8-18h],r14
fffff805`1ee3ec70 8b4728          mov     eax,dword ptr [rdi+28h]
fffff805`1ee3ec73 418940c0        mov     dword ptr [r8-40h],eax
fffff805`1ee3ec77 488b442460      mov     rax,qword ptr [rsp+60h]
fffff805`1ee3ec7c 488b00          mov     rax,qword ptr [rax]
fffff805`1ee3ec7f 498940d0        mov     qword ptr [r8-30h],rax
fffff805`1ee3ec83 488b842480000000 mov     rax,qword ptr [rsp+80h]
fffff805`1ee3ec8b 488b9398000000  mov     rdx,qword ptr [rbx+98h]
fffff805`1ee3ec92 4885c0          test    rax,rax
fffff805`1ee3ec95 0f8595000000    jne     nt!IoPageReadEx+0x1f8 (fffff805`1ee3ed30)  Branch

nt!IoPageReadEx+0x163:
fffff805`1ee3ec9b e860fdffff      call    nt!IoSetDiskIoAttributionFromThread (fffff805`1ee3ea00)

nt!IoPageReadEx+0x168:
fffff805`1ee3eca0 488bcb          mov     rcx,rbx
fffff805`1ee3eca3 48895e08        mov     qword ptr [rsi+8],rbx
fffff805`1ee3eca7 e864cd0900      call    nt!IopQueueThreadIrp (fffff805`1eedba10)
fffff805`1ee3ecac e89f000000      call    nt!MmIsRecursiveIoFault (fffff805`1ee3ed50)
fffff805`1ee3ecb1 84c0            test    al,al
fffff805`1ee3ecb3 7528            jne     nt!IoPageReadEx+0x1a5 (fffff805`1ee3ecdd)  Branch

nt!IoPageReadEx+0x17d:
fffff805`1ee3ecb5 488bd3          mov     rdx,rbx
fffff805`1ee3ecb8 488bcd          mov     rcx,rbp
fffff805`1ee3ecbb e8c0830900      call    nt!IofCallDriver (fffff805`1eed7080)

nt!IoPageReadEx+0x188:
fffff805`1ee3ecc0 488b5c2450      mov     rbx,qword ptr [rsp+50h]
fffff805`1ee3ecc5 488b6c2458      mov     rbp,qword ptr [rsp+58h]
fffff805`1ee3ecca 488b742468      mov     rsi,qword ptr [rsp+68h]
fffff805`1ee3eccf 4883c420        add     rsp,20h
fffff805`1ee3ecd3 415f            pop     r15
fffff805`1ee3ecd5 415e            pop     r14
fffff805`1ee3ecd7 415d            pop     r13
fffff805`1ee3ecd9 415c            pop     r12
fffff805`1ee3ecdb 5f              pop     rdi
fffff805`1ee3ecdc c3              ret

nt!IoPageReadEx+0x1a5:
fffff805`1ee3ecdd 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff805`1ee3ece6 8b4728          mov     eax,dword ptr [rdi+28h]
fffff805`1ee3ece9 05ff0f0000      add     eax,0FFFh
fffff805`1ee3ecee c1e80c          shr     eax,0Ch
fffff805`1ee3ecf1 018104070000    add     dword ptr [rcx+704h],eax
fffff805`1ee3ecf7 ebbc            jmp     nt!IoPageReadEx+0x17d (fffff805`1ee3ecb5)  Branch

nt!IoPageReadEx+0x1c1:
fffff805`1ee3ecf9 41f6c701        test    r15b,1
fffff805`1ee3ecfd 750b            jne     nt!IoPageReadEx+0x1d2 (fffff805`1ee3ed0a)  Branch

nt!IoPageReadEx+0x1c7:
fffff805`1ee3ecff ff05776c4100    inc     dword ptr [nt!IoPagingReadLowPriorityCount (fffff805`1f25597c)]
fffff805`1ee3ed05 e909ffffff      jmp     nt!IoPageReadEx+0xdb (fffff805`1ee3ec13)  Branch

nt!IoPageReadEx+0x1d2:
fffff805`1ee3ed0a 4180fc01        cmp     r12b,1
fffff805`1ee3ed0e 74ef            je      nt!IoPageReadEx+0x1c7 (fffff805`1ee3ecff)  Branch

nt!IoPageReadEx+0x1d8:
fffff805`1ee3ed10 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff805`1ee3ed19 f681d806000040  test    byte ptr [rcx+6D8h],40h
fffff805`1ee3ed20 75dd            jne     nt!IoPageReadEx+0x1c7 (fffff805`1ee3ecff)  Branch

nt!IoPageReadEx+0x1ea:
fffff805`1ee3ed22 ff05586c4100    inc     dword ptr [nt!IoPagingReadLowPriorityBumpedCount (fffff805`1f255980)]
fffff805`1ee3ed28 418bc1          mov     eax,r9d
fffff805`1ee3ed2b e9e3feffff      jmp     nt!IoPageReadEx+0xdb (fffff805`1ee3ec13)  Branch

nt!IoPageReadEx+0x1f8:
fffff805`1ee3ed30 4c8bc2          mov     r8,rdx
fffff805`1ee3ed33 4533c9          xor     r9d,r9d
fffff805`1ee3ed36 488b5018        mov     rdx,qword ptr [rax+18h]
fffff805`1ee3ed3a e8459b0300      call    nt!IopSetDiskIoAttributionExtension (fffff805`1ee78884)
fffff805`1ee3ed3f e95cffffff      jmp     nt!IoPageReadEx+0x168 (fffff805`1ee3eca0)  Branch

nt!IoPageReadEx+0x1bc1e2:
fffff805`1effad1a 498bce          mov     rcx,r14
fffff805`1effad1d e8824ee4ff      call    nt!MmIsFileObjectAPagingFile (fffff805`1ee3fba4)
fffff805`1effad22 85c0            test    eax,eax
fffff805`1effad24 7414            je      nt!IoPageReadEx+0x1bc202 (fffff805`1effad3a)  Branch

nt!IoPageReadEx+0x1bc1ee:
fffff805`1effad26 f0ff058bb32500  lock inc dword ptr [nt!IoPageReadIrpAllocationFailure (fffff805`1f2560b8)]
fffff805`1effad2d 8a554c          mov     dl,byte ptr [rbp+4Ch]
fffff805`1effad30 4533c0          xor     r8d,r8d
fffff805`1effad33 e8c8100a00      call    nt!IopAllocateReserveIrp (fffff805`1f09be00)
fffff805`1effad38 eb30            jmp     nt!IoPageReadEx+0x1bc232 (fffff805`1effad6a)  Branch

nt!IoPageReadEx+0x1bc202:
fffff805`1effad3a f0ff057fb32500  lock inc dword ptr [nt!IoPageReadNonPagefileIrpAllocationFailure (fffff805`1f2560c0)]
fffff805`1effad41 0fb7470a        movzx   eax,word ptr [rdi+0Ah]
fffff805`1effad45 b906000000      mov     ecx,6
fffff805`1effad4a 660fa3c8        bt      ax,cx
fffff805`1effad4e 0f92c1          setb    cl
fffff805`1effad51 40f6c640        test    sil,40h
fffff805`1effad55 0f95c0          setne   al
fffff805`1effad58 84c8            test    al,cl
fffff805`1effad5a 741a            je      nt!IoPageReadEx+0x1bc23e (fffff805`1effad76)  Branch

nt!IoPageReadEx+0x1bc224:
fffff805`1effad5c 8a554c          mov     dl,byte ptr [rbp+4Ch]
fffff805`1effad5f 41b001          mov     r8b,1
fffff805`1effad62 488bcd          mov     rcx,rbp
fffff805`1effad65 e8b60d0a00      call    nt!IopAllocateBackpocketIrp (fffff805`1f09bb20)

nt!IoPageReadEx+0x1bc232:
fffff805`1effad6a 488bd8          mov     rbx,rax
fffff805`1effad6d 4885c0          test    rax,rax
fffff805`1effad70 0f854b3ee4ff    jne     nt!IoPageReadEx+0x89 (fffff805`1ee3ebc1)  Branch

nt!IoPageReadEx+0x1bc23e:
fffff805`1effad76 b89a0000c0      mov     eax,0C000009Ah
fffff805`1effad7b e9403fe4ff      jmp     nt!IoPageReadEx+0x188 (fffff805`1ee3ecc0)  Branch

nt!IoPageReadEx+0x1bc248:
fffff805`1effad80 413bc1          cmp     eax,r9d
fffff805`1effad83 0f44c1          cmove   eax,ecx
fffff805`1effad86 e9963ee4ff      jmp     nt!IoPageReadEx+0xe9 (fffff805`1ee3ec21)  Branch
