lkd> uf ExCreateCallback
nt!ExCreateCallback:
fffff802`19a9dc00 48895c2408      mov     qword ptr [rsp+8],rbx
fffff802`19a9dc05 4889742418      mov     qword ptr [rsp+18h],rsi
fffff802`19a9dc0a 55              push    rbp
fffff802`19a9dc0b 57              push    rdi
fffff802`19a9dc0c 4154            push    r12
fffff802`19a9dc0e 4156            push    r14
fffff802`19a9dc10 4157            push    r15
fffff802`19a9dc12 488d6c24c9      lea     rbp,[rsp-37h]
fffff802`19a9dc17 4881ec90000000  sub     rsp,90h
fffff802`19a9dc1e 65488b342588010000 mov   rsi,qword ptr gs:[188h]
fffff802`19a9dc27 33ff            xor     edi,edi
fffff802`19a9dc29 0f104a10        movups  xmm1,xmmword ptr [rdx+10h]
fffff802`19a9dc2d 48217df7        and     qword ptr [rbp-9],rdi
fffff802`19a9dc31 458ae1          mov     r12b,r9b
fffff802`19a9dc34 0f1002          movups  xmm0,xmmword ptr [rdx]
fffff802`19a9dc37 458af0          mov     r14b,r8b
fffff802`19a9dc3a 4c8bf9          mov     r15,rcx
fffff802`19a9dc3d 0f114d17        movups  xmmword ptr [rbp+17h],xmm1
fffff802`19a9dc41 48897d6f        mov     qword ptr [rbp+6Fh],rdi
fffff802`19a9dc45 660f73d908      psrldq  xmm1,8
fffff802`19a9dc4a 660f7ec8        movd    eax,xmm1
fffff802`19a9dc4e 0f114507        movups  xmmword ptr [rbp+7],xmm0
fffff802`19a9dc52 0f104220        movups  xmm0,xmmword ptr [rdx+20h]
fffff802`19a9dc56 0fbae809        bts     eax,9
fffff802`19a9dc5a 89451f          mov     dword ptr [rbp+1Fh],eax
fffff802`19a9dc5d 0f114527        movups  xmmword ptr [rbp+27h],xmm0
fffff802`19a9dc61 48397d17        cmp     qword ptr [rbp+17h],rdi
fffff802`19a9dc65 0f8464010000    je      nt!ExCreateCallback+0x1cf (fffff802`19a9ddcf)  Branch

nt!ExCreateCallback+0x6b:
fffff802`19a9dc6b 488b1546ebeaff  mov     rdx,qword ptr [nt!ExCallbackObjectType (fffff802`1994c7b8)]
fffff802`19a9dc72 488d456f        lea     rax,[rbp+6Fh]
fffff802`19a9dc76 4889442430      mov     qword ptr [rsp+30h],rax
fffff802`19a9dc7b 488d4d07        lea     rcx,[rbp+7]
fffff802`19a9dc7f 48217c2428      and     qword ptr [rsp+28h],rdi
fffff802`19a9dc84 4533c9          xor     r9d,r9d
fffff802`19a9dc87 217c2420        and     dword ptr [rsp+20h],edi
fffff802`19a9dc8b 4533c0          xor     r8d,r8d
fffff802`19a9dc8e e88d48fbff      call    nt!ObOpenObjectByName (fffff802`19a52520)
fffff802`19a9dc93 488b7d6f        mov     rdi,qword ptr [rbp+6Fh]
fffff802`19a9dc97 8bd8            mov     ebx,eax

nt!ExCreateCallback+0x99:
fffff802`19a9dc99 85db            test    ebx,ebx
fffff802`19a9dc9b 7909            jns     nt!ExCreateCallback+0xa6 (fffff802`19a9dca6)  Branch

nt!ExCreateCallback+0x9d:
fffff802`19a9dc9d 4584f6          test    r14b,r14b
fffff802`19a9dca0 755a            jne     nt!ExCreateCallback+0xfc (fffff802`19a9dcfc)  Branch

nt!ExCreateCallback+0xa2:
fffff802`19a9dca2 85db            test    ebx,ebx
fffff802`19a9dca4 7838            js      nt!ExCreateCallback+0xde (fffff802`19a9dcde)  Branch

nt!ExCreateCallback+0xa6:
fffff802`19a9dca6 4c8b050bebeaff  mov     r8,qword ptr [nt!ExCallbackObjectType (fffff802`1994c7b8)]
fffff802`19a9dcad 488d45ff        lea     rax,[rbp-1]
fffff802`19a9dcb1 488364242800    and     qword ptr [rsp+28h],0
fffff802`19a9dcb7 4533c9          xor     r9d,r9d
fffff802`19a9dcba 33d2            xor     edx,edx
fffff802`19a9dcbc 4889442420      mov     qword ptr [rsp+20h],rax
fffff802`19a9dcc1 488bcf          mov     rcx,rdi
fffff802`19a9dcc4 e82761f8ff      call    nt!ObReferenceObjectByHandle (fffff802`19a23df0)
fffff802`19a9dcc9 488bcf          mov     rcx,rdi
fffff802`19a9dccc 8bd8            mov     ebx,eax
fffff802`19a9dcce e8ed30b2ff      call    nt!ZwClose (fffff802`195c0dc0)
fffff802`19a9dcd3 85db            test    ebx,ebx
fffff802`19a9dcd5 7807            js      nt!ExCreateCallback+0xde (fffff802`19a9dcde)  Branch

nt!ExCreateCallback+0xd7:
fffff802`19a9dcd7 488b45ff        mov     rax,qword ptr [rbp-1]
fffff802`19a9dcdb 498907          mov     qword ptr [r15],rax

nt!ExCreateCallback+0xde:
fffff802`19a9dcde 4c8d9c2490000000 lea     r11,[rsp+90h]
fffff802`19a9dce6 8bc3            mov     eax,ebx
fffff802`19a9dce8 498b5b30        mov     rbx,qword ptr [r11+30h]
fffff802`19a9dcec 498b7340        mov     rsi,qword ptr [r11+40h]
fffff802`19a9dcf0 498be3          mov     rsp,r11
fffff802`19a9dcf3 415f            pop     r15
fffff802`19a9dcf5 415e            pop     r14
fffff802`19a9dcf7 415c            pop     r12
fffff802`19a9dcf9 5f              pop     rdi
fffff802`19a9dcfa 5d              pop     rbp
fffff802`19a9dcfb c3              ret

nt!ExCreateCallback+0xfc:
fffff802`19a9dcfc 488364244800    and     qword ptr [rsp+48h],0
fffff802`19a9dd02 488d45f7        lea     rax,[rbp-9]
fffff802`19a9dd06 488b15abeaeaff  mov     rdx,qword ptr [nt!ExCallbackObjectType (fffff802`1994c7b8)]
fffff802`19a9dd0d 4c8d4507        lea     r8,[rbp+7]
fffff802`19a9dd11 4889442440      mov     qword ptr [rsp+40h],rax
fffff802`19a9dd16 4533c9          xor     r9d,r9d
fffff802`19a9dd19 8364243800      and     dword ptr [rsp+38h],0
fffff802`19a9dd1e 33c9            xor     ecx,ecx
fffff802`19a9dd20 8364243000      and     dword ptr [rsp+30h],0
fffff802`19a9dd25 c744242838000000 mov     dword ptr [rsp+28h],38h
fffff802`19a9dd2d e83eccf2ff      call    nt!ObCreateObjectEx (fffff802`199ca970)
fffff802`19a9dd32 8bd8            mov     ebx,eax
fffff802`19a9dd34 85c0            test    eax,eax
fffff802`19a9dd36 78a6            js      nt!ExCreateCallback+0xde (fffff802`19a9dcde)  Branch

nt!ExCreateCallback+0x138:
fffff802`19a9dd38 488b5df7        mov     rbx,qword ptr [rbp-9]
fffff802`19a9dd3c c70343616c6c    mov     dword ptr [rbx],6C6C6143h
fffff802`19a9dd42 488d4310        lea     rax,[rbx+10h]  //Retrieve ListHead
fffff802`19a9dd46 44886320        mov     byte ptr [rbx+20h],r12b
fffff802`19a9dd4a 48894008        mov     qword ptr [rax+8],rax //BLINK
fffff802`19a9dd4e 488900          mov     qword ptr [rax],rax //FLINK
fffff802`19a9dd51 4883630800      and     qword ptr [rbx+8],0
fffff802`19a9dd56 66ff8ee6010000  dec     word ptr [rsi+1E6h]
fffff802`19a9dd5d 33d2            xor     edx,edx
fffff802`19a9dd5f 488d0daa5bd7ff  lea     rcx,[nt!ExpCallbackListLock (fffff802`19813910)]
fffff802`19a9dd66 e875419eff      call    nt!ExAcquirePushLockExclusiveEx (fffff802`19481ee0)
fffff802`19a9dd6b 488b0d965bd7ff  mov     rcx,qword ptr [nt!ExpCallbackListHead+0x8 (fffff802`19813908)]
fffff802`19a9dd72 488d15875bd7ff  lea     rdx,[nt!ExpCallbackListHead (fffff802`19813900)]
fffff802`19a9dd79 488d4328        lea     rax,[rbx+28h]
fffff802`19a9dd7d 483911          cmp     qword ptr [rcx],rdx
fffff802`19a9dd80 0f850c7b1200    jne     nt!ExCreateCallback+0x127c92 (fffff802`19bc5892)  Branch

nt!ExCreateCallback+0x186:
fffff802`19a9dd86 48894808        mov     qword ptr [rax+8],rcx
fffff802`19a9dd8a 488910          mov     qword ptr [rax],rdx
fffff802`19a9dd8d 488901          mov     qword ptr [rcx],rax
fffff802`19a9dd90 488bce          mov     rcx,rsi
fffff802`19a9dd93 4889056e5bd7ff  mov     qword ptr [nt!ExpCallbackListHead+0x8 (fffff802`19813908)],rax
fffff802`19a9dd9a e85949aeff      call    nt!ExpUnlockCallbackListExclusive (fffff802`195826f8)
fffff802`19a9dd9f 4533c9          xor     r9d,r9d
fffff802`19a9dda2 488d456f        lea     rax,[rbp+6Fh]
fffff802`19a9dda6 4889442430      mov     qword ptr [rsp+30h],rax
fffff802`19a9ddab 33d2            xor     edx,edx
fffff802`19a9ddad 488364242800    and     qword ptr [rsp+28h],0
fffff802`19a9ddb3 488bcb          mov     rcx,rbx
fffff802`19a9ddb6 8364242000      and     dword ptr [rsp+20h],0
fffff802`19a9ddbb 458d4101        lea     r8d,[r9+1]
fffff802`19a9ddbf e87ccff2ff      call    nt!ObInsertObjectEx (fffff802`199cad40)
fffff802`19a9ddc4 488b7d6f        mov     rdi,qword ptr [rbp+6Fh]
fffff802`19a9ddc8 8bd8            mov     ebx,eax
fffff802`19a9ddca e9d3feffff      jmp     nt!ExCreateCallback+0xa2 (fffff802`19a9dca2)  Branch

nt!ExCreateCallback+0x1cf:
fffff802`19a9ddcf bb010000c0      mov     ebx,0C0000001h
fffff802`19a9ddd4 e9c0feffff      jmp     nt!ExCreateCallback+0x99 (fffff802`19a9dc99)  Branch

nt!ExCreateCallback+0x127c92:
fffff802`19bc5892 b903000000      mov     ecx,3
fffff802`19bc5897 cd29            int     29h
fffff802`19bc5899 cc              int     3
fffff802`19bc589a 488b4b18        mov     rcx,qword ptr [rbx+18h]
fffff802`19bc589e 488d542440      lea     rdx,[rsp+40h]
fffff802`19bc58a3 488b4110        mov     rax,qword ptr [rcx+10h]
fffff802`19bc58a7 e86475a0ff      call    nt!guard_dispatch_icall (fffff802`195cce10)
fffff802`19bc58ac 32c0            xor     al,al
fffff802`19bc58ae e96385edff      jmp     nt!CmpCloneKCBValueListForTrans+0x36 (fffff802`19a9de16)  Branch

nt!CmpCloneKCBValueListForTrans+0x36:
fffff802`19a9de16 488b5c2448      mov     rbx,qword ptr [rsp+48h]
fffff802`19a9de1b 488b6c2450      mov     rbp,qword ptr [rsp+50h]
fffff802`19a9de20 4883c420        add     rsp,20h
fffff802`19a9de24 415e            pop     r14
fffff802`19a9de26 5f              pop     rdi
fffff802`19a9de27 5e              pop     rsi
fffff802`19a9de28 c3              ret
