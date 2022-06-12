kd> uf ExFreePoolWithTag
nt!ExFreePoolWithTag:
fffff801`46f5bc80 48895c2408      mov     qword ptr [rsp+8],rbx
fffff801`46f5bc85 4889742410      mov     qword ptr [rsp+10h],rsi
fffff801`46f5bc8a 57              push    rdi
fffff801`46f5bc8b 4154            push    r12
fffff801`46f5bc8d 4155            push    r13
fffff801`46f5bc8f 4156            push    r14
fffff801`46f5bc91 4157            push    r15
fffff801`46f5bc93 4881ec00010000  sub     rsp,100h
fffff801`46f5bc9a 833d1fc7170003  cmp     dword ptr [nt!ExpHeapBackedPoolEnabledState (fffff801`470d83c0)],3
fffff801`46f5bca1 488bf1          mov     rsi,rcx
fffff801`46f5bca4 0f85950c0000    jne     nt!ExFreePoolWithTag+0xcbf (fffff801`46f5c93f)  Branch

nt!ExFreePoolWithTag+0x2a:
fffff801`46f5bcaa 49be000000000080ffff mov r14,0FFFF800000000000h
fffff801`46f5bcb4 488d1d4553cbff  lea     rbx,[nt!MmFreeIndependentPages <PERF> (nt+0x0) (fffff801`46c11000)]
fffff801`46f5bcbb 493bce          cmp     rcx,r14
fffff801`46f5bcbe 721d            jb      nt!ExFreePoolWithTag+0x5d (fffff801`46f5bcdd)  Branch

nt!ExFreePoolWithTag+0x40:
fffff801`46f5bcc0 488bc1          mov     rax,rcx
fffff801`46f5bcc3 48c1e827        shr     rax,27h
fffff801`46f5bcc7 25ff010000      and     eax,1FFh
fffff801`46f5bccc 0500ffffff      add     eax,0FFFFFF00h
fffff801`46f5bcd1 80bc18d0c8430001 cmp     byte ptr [rax+rbx+43C8D0h],1
fffff801`46f5bcd9 b005            mov     al,5
fffff801`46f5bcdb 7402            je      nt!ExFreePoolWithTag+0x5f (fffff801`46f5bcdf)  Branch

nt!ExFreePoolWithTag+0x5d:
fffff801`46f5bcdd b003            mov     al,3

nt!ExFreePoolWithTag+0x5f:
fffff801`46f5bcdf 33c9            xor     ecx,ecx
fffff801`46f5bce1 0f29b424f0000000 movaps  xmmword ptr [rsp+0F0h],xmm6
fffff801`46f5bce9 48894c2470      mov     qword ptr [rsp+70h],rcx
fffff801`46f5bcee 33ff            xor     edi,edi
fffff801`46f5bcf0 66c74424710100  mov     word ptr [rsp+71h],1
fffff801`46f5bcf7 49bfad4ee6a2ad4ee6a2 mov r15,0A2E64EADA2E64EADh
fffff801`46f5bd01 88442470        mov     byte ptr [rsp+70h],al
fffff801`46f5bd05 48894c2478      mov     qword ptr [rsp+78h],rcx
fffff801`46f5bd0a 6685f6          test    si,si
fffff801`46f5bd0d 7574            jne     nt!ExFreePoolWithTag+0x103 (fffff801`46f5bd83)  Branch

nt!ExFreePoolWithTag+0x8f:
fffff801`46f5bd0f 0f28742470      movaps  xmm6,xmmword ptr [rsp+70h]
fffff801`46f5bd14 488d8c24c0000000 lea     rcx,[rsp+0C0h]
fffff801`46f5bd1c 660f7fb424c0000000 movdqa xmmword ptr [rsp+0C0h],xmm6
fffff801`46f5bd25 e88678d5ff      call    nt!RtlpHpEnvGetHeapManager (fffff801`46cb35b0)
fffff801`46f5bd2a 488d4808        lea     rcx,[rax+8]
fffff801`46f5bd2e 488bd6          mov     rdx,rsi
fffff801`46f5bd31 482b5140        sub     rdx,qword ptr [rcx+40h]
fffff801`46f5bd35 48c1ea14        shr     rdx,14h
fffff801`46f5bd39 4803d2          add     rdx,rdx
fffff801`46f5bd3c e8d3fbd0ff      call    nt!RtlCSparseBitmapBitmaskRead (fffff801`46c6b914)
fffff801`46f5bd41 4885c0          test    rax,rax
fffff801`46f5bd44 7407            je      nt!ExFreePoolWithTag+0xcd (fffff801`46f5bd4d)  Branch

nt!ExFreePoolWithTag+0xc6:
fffff801`46f5bd46 ffc8            dec     eax
fffff801`46f5bd48 83f802          cmp     eax,2
fffff801`46f5bd4b 7538            jne     nt!ExFreePoolWithTag+0x105 (fffff801`46f5bd85)  Branch

nt!ExFreePoolWithTag+0xcd:
fffff801`46f5bd4d 4c8d8c2480000000 lea     r9,[rsp+80h]
fffff801`46f5bd55 660f7fb424d0000000 movdqa xmmword ptr [rsp+0D0h],xmm6
fffff801`46f5bd5e 4c8d842488000000 lea     r8,[rsp+88h]
fffff801`46f5bd66 488bce          mov     rcx,rsi
fffff801`46f5bd69 488d9424d0000000 lea     rdx,[rsp+0D0h]
fffff801`46f5bd71 e8fa3ad1ff      call    nt!RtlpHpQueryVA (fffff801`46c6f870)
fffff801`46f5bd76 488b842488000000 mov     rax,qword ptr [rsp+88h]
fffff801`46f5bd7e 4c8b28          mov     r13,qword ptr [rax]
fffff801`46f5bd81 eb45            jmp     nt!ExFreePoolWithTag+0x148 (fffff801`46f5bdc8)  Branch

nt!ExFreePoolWithTag+0x103:
fffff801`46f5bd83 8bc7            mov     eax,edi

nt!ExFreePoolWithTag+0x105:
fffff801`46f5bd85 4863c8          movsxd  rcx,eax
fffff801`46f5bd88 c744246000001000 mov     dword ptr [rsp+60h],100000h
fffff801`46f5bd90 c744246400000001 mov     dword ptr [rsp+64h],1000000h
fffff801`46f5bd98 8b448c60        mov     eax,dword ptr [rsp+rcx*4+60h]
fffff801`46f5bd9c 48ffc8          dec     rax
fffff801`46f5bd9f 48f7d0          not     rax
fffff801`46f5bda2 4823c6          and     rax,rsi
fffff801`46f5bda5 4c8b6810        mov     r13,qword ptr [rax+10h]
fffff801`46f5bda9 4c33e8          xor     r13,rax
fffff801`46f5bdac 488d0449        lea     rax,[rcx+rcx*2]
fffff801`46f5bdb0 4c332d49440c00  xor     r13,qword ptr [nt!RtlpHpHeapGlobals (fffff801`47020200)]
fffff801`46f5bdb7 4d33ef          xor     r13,r15
fffff801`46f5bdba 48c1e006        shl     rax,6
fffff801`46f5bdbe 4c2be8          sub     r13,rax
fffff801`46f5bdc1 4981ed00010000  sub     r13,100h

nt!ExFreePoolWithTag+0x148:
fffff801`46f5bdc8 0f28b424f0000000 movaps  xmm6,xmmword ptr [rsp+0F0h]
fffff801`46f5bdd0 4d85ed          test    r13,r13
fffff801`46f5bdd3 0f8424180000    je      nt!ExFreePoolWithTag+0x197d (fffff801`46f5d5fd)  Branch

nt!ExFreePoolWithTag+0x159:
fffff801`46f5bdd9 8b0505d20b00    mov     eax,dword ptr [nt!ExpSpecialAllocations (fffff801`47018fe4)]
fffff801`46f5bddf 85c0            test    eax,eax
fffff801`46f5bde1 7423            je      nt!ExFreePoolWithTag+0x186 (fffff801`46f5be06)  Branch

nt!ExFreePoolWithTag+0x163:
fffff801`46f5bde3 498bcd          mov     rcx,r13
fffff801`46f5bde6 e8d59dceff      call    nt!ExpHpIsSpecialPoolHeap (fffff801`46c45bc0)
fffff801`46f5bdeb 85c0            test    eax,eax
fffff801`46f5bded 7417            je      nt!ExFreePoolWithTag+0x186 (fffff801`46f5be06)  Branch

nt!ExFreePoolWithTag+0x16f:
fffff801`46f5bdef f0ff0deed10b00  lock dec dword ptr [nt!ExpSpecialAllocations (fffff801`47018fe4)]
fffff801`46f5bdf6 488bd6          mov     rdx,rsi
fffff801`46f5bdf9 498bcd          mov     rcx,r13
fffff801`46f5bdfc e89324fdff      call    nt!ExpFreeHeapSpecialPool (fffff801`46f2e294)
fffff801`46f5be01 e970190000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x186:
fffff801`46f5be06 41bc01000000    mov     r12d,1
fffff801`46f5be0c 48f7c6ff0f0000  test    rsi,0FFFh
fffff801`46f5be13 0f850e030000    jne     nt!ExFreePoolWithTag+0x4a7 (fffff801`46f5c127)  Branch

nt!ExFreePoolWithTag+0x199:
fffff801`46f5be19 493bf6          cmp     rsi,r14
fffff801`46f5be1c 723e            jb      nt!ExFreePoolWithTag+0x1dc (fffff801`46f5be5c)  Branch

nt!ExFreePoolWithTag+0x19e:
fffff801`46f5be1e 488bc6          mov     rax,rsi
fffff801`46f5be21 48c1e827        shr     rax,27h
fffff801`46f5be25 25ff010000      and     eax,1FFh
fffff801`46f5be2a 0500ffffff      add     eax,0FFFFFF00h
fffff801`46f5be2f 0fb69418d0c84300 movzx   edx,byte ptr [rax+rbx+43C8D0h]
fffff801`46f5be37 413bd4          cmp     edx,r12d
fffff801`46f5be3a 7507            jne     nt!ExFreePoolWithTag+0x1c3 (fffff801`46f5be43)  Branch

nt!ExFreePoolWithTag+0x1bc:
fffff801`46f5be3c 418d5c2420      lea     ebx,[r12+20h]
fffff801`46f5be41 eb1b            jmp     nt!ExFreePoolWithTag+0x1de (fffff801`46f5be5e)  Branch

nt!ExFreePoolWithTag+0x1c3:
fffff801`46f5be43 8d42fb          lea     eax,[rdx-5]
fffff801`46f5be46 a9f7ffffff      test    eax,0FFFFFFF7h
fffff801`46f5be4b 740f            je      nt!ExFreePoolWithTag+0x1dc (fffff801`46f5be5c)  Branch

nt!ExFreePoolWithTag+0x1cd:
fffff801`46f5be4d 83fa06          cmp     edx,6
fffff801`46f5be50 7405            je      nt!ExFreePoolWithTag+0x1d7 (fffff801`46f5be57)  Branch

nt!ExFreePoolWithTag+0x1d2:
fffff801`46f5be52 80fa07          cmp     dl,7
fffff801`46f5be55 7505            jne     nt!ExFreePoolWithTag+0x1dc (fffff801`46f5be5c)  Branch

nt!ExFreePoolWithTag+0x1d7:
fffff801`46f5be57 418bdc          mov     ebx,r12d
fffff801`46f5be5a eb02            jmp     nt!ExFreePoolWithTag+0x1de (fffff801`46f5be5e)  Branch

nt!ExFreePoolWithTag+0x1dc:
fffff801`46f5be5c 8bdf            mov     ebx,edi

nt!ExFreePoolWithTag+0x1de:
fffff801`46f5be5e 450f20c7        mov     r15,cr8
fffff801`46f5be62 4c89bc2440010000 mov     qword ptr [rsp+140h],r15
fffff801`46f5be6a b802000000      mov     eax,2
fffff801`46f5be6f 440f22c0        mov     cr8,rax
fffff801`46f5be73 8b057b861f00    mov     eax,dword ptr [nt!KiIrqlFlags (fffff801`471544f4)]
fffff801`46f5be79 85c0            test    eax,eax
fffff801`46f5be7b 7422            je      nt!ExFreePoolWithTag+0x21f (fffff801`46f5be9f)  Branch

nt!ExFreePoolWithTag+0x1fd:
fffff801`46f5be7d 4184c4          test    r12b,al
fffff801`46f5be80 741d            je      nt!ExFreePoolWithTag+0x21f (fffff801`46f5be9f)  Branch

nt!ExFreePoolWithTag+0x202:
fffff801`46f5be82 4180ff02        cmp     r15b,2
fffff801`46f5be86 7317            jae     nt!ExFreePoolWithTag+0x21f (fffff801`46f5be9f)  Branch

nt!ExFreePoolWithTag+0x208:
fffff801`46f5be88 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff801`46f5be91 488b88b8610000  mov     rcx,qword ptr [rax+61B8h]
fffff801`46f5be98 f0810900000100  lock or dword ptr [rcx],10000h

nt!ExFreePoolWithTag+0x21f:
fffff801`46f5be9f f605a0841f0021  test    byte ptr [nt!PerfGlobalGroupMask+0x6 (fffff801`47154346)],21h
fffff801`46f5bea6 7415            je      nt!ExFreePoolWithTag+0x23d (fffff801`46f5bebd)  Branch

nt!ExFreePoolWithTag+0x228:
fffff801`46f5bea8 410fb6d7        movzx   edx,r15b
fffff801`46f5beac 488d0d95f90b00  lea     rcx,[nt!ExpLargePoolTableLock (fffff801`4701b848)]
fffff801`46f5beb3 e8dcf8fcff      call    nt!ExpAcquireSpinLockSharedAtDpcLevelInstrumented (fffff801`46f2b794)
fffff801`46f5beb8 e981000000      jmp     nt!ExFreePoolWithTag+0x2be (fffff801`46f5bf3e)  Branch

nt!ExFreePoolWithTag+0x23d:
fffff801`46f5bebd 654c8b342520000000 mov   r14,qword ptr gs:[20h]
fffff801`46f5bec6 498b8eb8610000  mov     rcx,qword ptr [r14+61B8h]
fffff801`46f5becd 4885c9          test    rcx,rcx
fffff801`46f5bed0 7419            je      nt!ExFreePoolWithTag+0x26b (fffff801`46f5beeb)  Branch

nt!ExFreePoolWithTag+0x252:
fffff801`46f5bed2 45386620        cmp     byte ptr [r14+20h],r12b
fffff801`46f5bed6 7713            ja      nt!ExFreePoolWithTag+0x26b (fffff801`46f5beeb)  Branch

nt!ExFreePoolWithTag+0x258:
fffff801`46f5bed8 8b4114          mov     eax,dword ptr [rcx+14h]
fffff801`46f5bedb 4103c4          add     eax,r12d
fffff801`46f5bede 894114          mov     dword ptr [rcx+14h],eax
fffff801`46f5bee1 7508            jne     nt!ExFreePoolWithTag+0x26b (fffff801`46f5beeb)  Branch

nt!ExFreePoolWithTag+0x263:
fffff801`46f5bee3 498bce          mov     rcx,r14
fffff801`46f5bee6 e89124e6ff      call    nt!KiRemoveSystemWorkPriorityKick (fffff801`46dbe37c)

nt!ExFreePoolWithTag+0x26b:
fffff801`46f5beeb 0f0d0d56f90b00  prefetchw [nt!ExpLargePoolTableLock (fffff801`4701b848)]
fffff801`46f5bef2 8b0550f90b00    mov     eax,dword ptr [nt!ExpLargePoolTableLock (fffff801`4701b848)]
fffff801`46f5bef8 0fbaf01f        btr     eax,1Fh
fffff801`46f5befc 8d4801          lea     ecx,[rax+1]
fffff801`46f5beff f00fb10d41f90b00 lock cmpxchg dword ptr [nt!ExpLargePoolTableLock (fffff801`4701b848)],ecx
fffff801`46f5bf07 7435            je      nt!ExFreePoolWithTag+0x2be (fffff801`46f5bf3e)  Branch

nt!ExFreePoolWithTag+0x289:
fffff801`46f5bf09 498b8eb8610000  mov     rcx,qword ptr [r14+61B8h]
fffff801`46f5bf10 4885c9          test    rcx,rcx
fffff801`46f5bf13 7419            je      nt!ExFreePoolWithTag+0x2ae (fffff801`46f5bf2e)  Branch

nt!ExFreePoolWithTag+0x295:
fffff801`46f5bf15 45386620        cmp     byte ptr [r14+20h],r12b
fffff801`46f5bf19 7713            ja      nt!ExFreePoolWithTag+0x2ae (fffff801`46f5bf2e)  Branch

nt!ExFreePoolWithTag+0x29b:
fffff801`46f5bf1b 8b4114          mov     eax,dword ptr [rcx+14h]
fffff801`46f5bf1e 412bc4          sub     eax,r12d
fffff801`46f5bf21 894114          mov     dword ptr [rcx+14h],eax
fffff801`46f5bf24 7508            jne     nt!ExFreePoolWithTag+0x2ae (fffff801`46f5bf2e)  Branch

nt!ExFreePoolWithTag+0x2a6:
fffff801`46f5bf26 498bce          mov     rcx,r14
fffff801`46f5bf29 e84e24e6ff      call    nt!KiRemoveSystemWorkPriorityKick (fffff801`46dbe37c)

nt!ExFreePoolWithTag+0x2ae:
fffff801`46f5bf2e 410fb6d7        movzx   edx,r15b
fffff801`46f5bf32 488d0d0ff90b00  lea     rcx,[nt!ExpLargePoolTableLock (fffff801`4701b848)]
fffff801`46f5bf39 e86205d0ff      call    nt!ExpWaitForSpinLockSharedAndAcquire (fffff801`46c5c4a0)

nt!ExFreePoolWithTag+0x2be:
fffff801`46f5bf3e f6c320          test    bl,20h
fffff801`46f5bf41 7517            jne     nt!ExFreePoolWithTag+0x2da (fffff801`46f5bf5a)  Branch

nt!ExFreePoolWithTag+0x2c3:
fffff801`46f5bf43 4c8b15eef80b00  mov     r10,qword ptr [nt!PoolBigPageTable (fffff801`4701b838)]
fffff801`46f5bf4a 488d05af012100  lea     rax,[nt!ExpPoolBigEntriesInUse (fffff801`4716c100)]
fffff801`46f5bf51 4c8b1dc8f80b00  mov     r11,qword ptr [nt!PoolBigPageTableSize (fffff801`4701b820)]
fffff801`46f5bf58 eb1b            jmp     nt!ExFreePoolWithTag+0x2f5 (fffff801`46f5bf75)  Branch

nt!ExFreePoolWithTag+0x2da:
fffff801`46f5bf5a 488b05dfff0e00  mov     rax,qword ptr [nt!MiState+0x1580 (fffff801`4704bf40)]
fffff801`46f5bf61 4c8b9038200000  mov     r10,qword ptr [rax+2038h]
fffff801`46f5bf68 4c8b9840200000  mov     r11,qword ptr [rax+2040h]
fffff801`46f5bf6f 4805b81f0000    add     rax,1FB8h

nt!ExFreePoolWithTag+0x2f5:
fffff801`46f5bf75 4889442438      mov     qword ptr [rsp+38h],rax
fffff801`46f5bf7a 488bc6          mov     rax,rsi
fffff801`46f5bf7d 48c1e80c        shr     rax,0Ch
fffff801`46f5bf81 8bc0            mov     eax,eax
fffff801`46f5bf83 4c69f05f9e0000  imul    r14,rax,9E5Fh
fffff801`46f5bf8a 660f1f440000    nop     word ptr [rax+rax]

nt!ExFreePoolWithTag+0x310:
fffff801`46f5bf90 498bc6          mov     rax,r14
fffff801`46f5bf93 418d53ff        lea     edx,[r11-1]
fffff801`46f5bf97 48c1e820        shr     rax,20h
fffff801`46f5bf9b 498bce          mov     rcx,r14
fffff801`46f5bf9e 4833c8          xor     rcx,rax
fffff801`46f5bfa1 458bcc          mov     r9d,r12d
fffff801`46f5bfa4 23d1            and     edx,ecx
fffff801`46f5bfa6 66660f1f840000000000 nop word ptr [rax+rax]

nt!ExFreePoolWithTag+0x330:
fffff801`46f5bfb0 448bc2          mov     r8d,edx
fffff801`46f5bfb3 4b8d0440        lea     rax,[r8+r8*2]
fffff801`46f5bfb7 498b0cc2        mov     rcx,qword ptr [r10+rax*8]
fffff801`46f5bfbb 483bce          cmp     rcx,rsi
fffff801`46f5bfbe 7415            je      nt!ExFreePoolWithTag+0x355 (fffff801`46f5bfd5)  Branch

nt!ExFreePoolWithTag+0x340:
fffff801`46f5bfc0 ffc2            inc     edx
fffff801`46f5bfc2 8bc2            mov     eax,edx
fffff801`46f5bfc4 493bc3          cmp     rax,r11
fffff801`46f5bfc7 72e7            jb      nt!ExFreePoolWithTag+0x330 (fffff801`46f5bfb0)  Branch

nt!ExFreePoolWithTag+0x349:
fffff801`46f5bfc9 4585c9          test    r9d,r9d
fffff801`46f5bfcc 7414            je      nt!ExFreePoolWithTag+0x362 (fffff801`46f5bfe2)  Branch

nt!ExFreePoolWithTag+0x34e:
fffff801`46f5bfce 8bd7            mov     edx,edi
fffff801`46f5bfd0 448bcf          mov     r9d,edi
fffff801`46f5bfd3 ebdb            jmp     nt!ExFreePoolWithTag+0x330 (fffff801`46f5bfb0)  Branch

nt!ExFreePoolWithTag+0x355:
fffff801`46f5bfd5 4b8d0440        lea     rax,[r8+r8*2]
fffff801`46f5bfd9 498d0cc2        lea     rcx,[r10+rax*8]
fffff801`46f5bfdd 4885c9          test    rcx,rcx
fffff801`46f5bfe0 756b            jne     nt!ExFreePoolWithTag+0x3cd (fffff801`46f5c04d)  Branch

nt!ExFreePoolWithTag+0x362:
fffff801`46f5bfe2 85db            test    ebx,ebx
fffff801`46f5bfe4 0f852b160000    jne     nt!ExFreePoolWithTag+0x1995 (fffff801`46f5d615)  Branch

nt!ExFreePoolWithTag+0x36a:
fffff801`46f5bfea 4c3b1547f80b00  cmp     r10,qword ptr [nt!PoolBigPageTable (fffff801`4701b838)]
fffff801`46f5bff1 0f851e160000    jne     nt!ExFreePoolWithTag+0x1995 (fffff801`46f5d615)  Branch

nt!ExFreePoolWithTag+0x377:
fffff801`46f5bff7 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff801`46f5c000 488b89b8000000  mov     rcx,qword ptr [rcx+0B8h]
fffff801`46f5c007 e8c46bdcff      call    nt!MmGetSessionIdEx (fffff801`46d22bd0)
fffff801`46f5c00c 83f8ff          cmp     eax,0FFFFFFFFh
fffff801`46f5c00f 0f8400160000    je      nt!ExFreePoolWithTag+0x1995 (fffff801`46f5d615)  Branch

nt!ExFreePoolWithTag+0x395:
fffff801`46f5c015 488b0524ff0e00  mov     rax,qword ptr [nt!MiState+0x1580 (fffff801`4704bf40)]
fffff801`46f5c01c 4c8b9038200000  mov     r10,qword ptr [rax+2038h]
fffff801`46f5c023 4c8d80b81f0000  lea     r8,[rax+1FB8h]
fffff801`46f5c02a 4c8b9840200000  mov     r11,qword ptr [rax+2040h]
fffff801`46f5c031 4c89442438      mov     qword ptr [rsp+38h],r8
fffff801`46f5c036 4d85d2          test    r10,r10
fffff801`46f5c039 0f84d6150000    je      nt!ExFreePoolWithTag+0x1995 (fffff801`46f5d615)  Branch

nt!ExFreePoolWithTag+0x3bf:
fffff801`46f5c03f 4d85db          test    r11,r11
fffff801`46f5c042 0f84cd150000    je      nt!ExFreePoolWithTag+0x1995 (fffff801`46f5d615)  Branch

nt!ExFreePoolWithTag+0x3c8:
fffff801`46f5c048 e943ffffff      jmp     nt!ExFreePoolWithTag+0x310 (fffff801`46f5bf90)  Branch

nt!ExFreePoolWithTag+0x3cd:
fffff801`46f5c04d 448b790c        mov     r15d,dword ptr [rcx+0Ch]
fffff801`46f5c051 448b6108        mov     r12d,dword ptr [rcx+8]
fffff801`46f5c055 488b442438      mov     rax,qword ptr [rsp+38h]
fffff801`46f5c05a 4c8b7110        mov     r14,qword ptr [rcx+10h]
fffff801`46f5c05e 41c1ef08        shr     r15d,8
fffff801`46f5c062 4181e7ff0f0000  and     r15d,0FFFh
fffff801`46f5c069 4489a42448010000 mov     dword ptr [rsp+148h],r12d
fffff801`46f5c071 f0ff08          lock dec dword ptr [rax]
fffff801`46f5c074 f048ff01        lock inc qword ptr [rcx]
fffff801`46f5c078 f605c7821f0001  test    byte ptr [nt!PerfGlobalGroupMask+0x6 (fffff801`47154346)],1
fffff801`46f5c07f 7416            je      nt!ExFreePoolWithTag+0x417 (fffff801`46f5c097)  Branch

nt!ExFreePoolWithTag+0x401:
fffff801`46f5c081 488b942428010000 mov     rdx,qword ptr [rsp+128h]
fffff801`46f5c089 488d0db8f70b00  lea     rcx,[nt!ExpLargePoolTableLock (fffff801`4701b848)]
fffff801`46f5c090 e83ff8fcff      call    nt!ExpReleaseSpinLockSharedFromDpcLevelInstrumented (fffff801`46f2b8d4)
fffff801`46f5c095 eb12            jmp     nt!ExFreePoolWithTag+0x429 (fffff801`46f5c0a9)  Branch

nt!ExFreePoolWithTag+0x417:
fffff801`46f5c097 f08125a6f70b00ffffffbf lock and dword ptr [nt!ExpLargePoolTableLock (fffff801`4701b848)],0BFFFFFFFh
fffff801`46f5c0a2 f0ff0d9ff70b00  lock dec dword ptr [nt!ExpLargePoolTableLock (fffff801`4701b848)]

nt!ExFreePoolWithTag+0x429:
fffff801`46f5c0a9 65488b0c2520000000 mov   rcx,qword ptr gs:[20h]
fffff801`46f5c0b2 488b91b8610000  mov     rdx,qword ptr [rcx+61B8h]
fffff801`46f5c0b9 4885d2          test    rdx,rdx
fffff801`46f5c0bc 7416            je      nt!ExFreePoolWithTag+0x454 (fffff801`46f5c0d4)  Branch

nt!ExFreePoolWithTag+0x43e:
fffff801`46f5c0be 80792001        cmp     byte ptr [rcx+20h],1
fffff801`46f5c0c2 7710            ja      nt!ExFreePoolWithTag+0x454 (fffff801`46f5c0d4)  Branch

nt!ExFreePoolWithTag+0x444:
fffff801`46f5c0c4 8b4214          mov     eax,dword ptr [rdx+14h]
fffff801`46f5c0c7 83e801          sub     eax,1
fffff801`46f5c0ca 894214          mov     dword ptr [rdx+14h],eax
fffff801`46f5c0cd 7505            jne     nt!ExFreePoolWithTag+0x454 (fffff801`46f5c0d4)  Branch

nt!ExFreePoolWithTag+0x44f:
fffff801`46f5c0cf e8a822e6ff      call    nt!KiRemoveSystemWorkPriorityKick (fffff801`46dbe37c)

nt!ExFreePoolWithTag+0x454:
fffff801`46f5c0d4 8b051a841f00    mov     eax,dword ptr [nt!KiIrqlFlags (fffff801`471544f4)]
fffff801`46f5c0da 488b9c2440010000 mov     rbx,qword ptr [rsp+140h]
fffff801`46f5c0e2 85c0            test    eax,eax
fffff801`46f5c0e4 742d            je      nt!ExFreePoolWithTag+0x493 (fffff801`46f5c113)  Branch

nt!ExFreePoolWithTag+0x466:
fffff801`46f5c0e6 a801            test    al,1
fffff801`46f5c0e8 7429            je      nt!ExFreePoolWithTag+0x493 (fffff801`46f5c113)  Branch

nt!ExFreePoolWithTag+0x46a:
fffff801`46f5c0ea 440f20c0        mov     rax,cr8
fffff801`46f5c0ee 3c02            cmp     al,2
fffff801`46f5c0f0 7221            jb      nt!ExFreePoolWithTag+0x493 (fffff801`46f5c113)  Branch

nt!ExFreePoolWithTag+0x472:
fffff801`46f5c0f2 80fb02          cmp     bl,2
fffff801`46f5c0f5 731c            jae     nt!ExFreePoolWithTag+0x493 (fffff801`46f5c113)  Branch

nt!ExFreePoolWithTag+0x477:
fffff801`46f5c0f7 65488b0c2520000000 mov   rcx,qword ptr gs:[20h]
fffff801`46f5c100 488b81b8610000  mov     rax,qword ptr [rcx+61B8h]
fffff801`46f5c107 f08120fffffeff  lock and dword ptr [rax],0FFFEFFFFh
fffff801`46f5c10e e86922e6ff      call    nt!KiRemoveSystemWorkPriorityKick (fffff801`46dbe37c)

nt!ExFreePoolWithTag+0x493:
fffff801`46f5c113 0fb6c3          movzx   eax,bl
fffff801`46f5c116 440f22c0        mov     cr8,rax
fffff801`46f5c11a 488bde          mov     rbx,rsi
fffff801`46f5c11d 4889742448      mov     qword ptr [rsp+48h],rsi
fffff801`46f5c122 e9f6010000      jmp     nt!ExFreePoolWithTag+0x69d (fffff801`46f5c31d)  Branch

nt!ExFreePoolWithTag+0x4a7:
fffff801`46f5c127 f646f304        test    byte ptr [rsi-0Dh],4
fffff801`46f5c12b 488d5ef0        lea     rbx,[rsi-10h]
fffff801`46f5c12f 7411            je      nt!ExFreePoolWithTag+0x4c2 (fffff801`46f5c142)  Branch

nt!ExFreePoolWithTag+0x4b1:
fffff801`46f5c131 0fb703          movzx   eax,word ptr [rbx]
fffff801`46f5c134 0fb6c8          movzx   ecx,al
fffff801`46f5c137 48c1e104        shl     rcx,4
fffff801`46f5c13b 482bd9          sub     rbx,rcx
fffff801`46f5c13e 804b0304        or      byte ptr [rbx+3],4

nt!ExFreePoolWithTag+0x4c2:
fffff801`46f5c142 440fb67b03      movzx   r15d,byte ptr [rbx+3]
fffff801`46f5c147 488d4b10        lea     rcx,[rbx+10h]
fffff801`46f5c14b 448b6304        mov     r12d,dword ptr [rbx+4]
fffff801`46f5c14f 4489a42448010000 mov     dword ptr [rsp+148h],r12d
fffff801`46f5c157 44897c2430      mov     dword ptr [rsp+30h],r15d
fffff801`46f5c15c 48894c2448      mov     qword ptr [rsp+48h],rcx
fffff801`46f5c161 41f6c708        test    r15b,8
fffff801`46f5c165 0f84a6010000    je      nt!ExFreePoolWithTag+0x691 (fffff801`46f5c311)  Branch

nt!ExFreePoolWithTag+0x4eb:
fffff801`46f5c16b 4c8b6308        mov     r12,qword ptr [rbx+8]
fffff801`46f5c16f 4c3325c2841f00  xor     r12,qword ptr [nt!ExpPoolQuotaCookie (fffff801`47154638)]
fffff801`46f5c176 4c33e3          xor     r12,rbx
fffff801`46f5c179 0f848a010000    je      nt!ExFreePoolWithTag+0x689 (fffff801`46f5c309)  Branch

nt!ExFreePoolWithTag+0x4ff:
fffff801`46f5c17f 4d3be6          cmp     r12,r14
fffff801`46f5c182 0f82c1140000    jb      nt!ExFreePoolWithTag+0x19c9 (fffff801`46f5d649)  Branch

nt!ExFreePoolWithTag+0x508:
fffff801`46f5c188 410fb60424      movzx   eax,byte ptr [r12]
fffff801`46f5c18d 247f            and     al,7Fh
fffff801`46f5c18f 3c03            cmp     al,3
fffff801`46f5c191 0f85b2140000    jne     nt!ExFreePoolWithTag+0x19c9 (fffff801`46f5d649)  Branch

nt!ExFreePoolWithTag+0x517:
fffff801`46f5c197 0fb74302        movzx   eax,word ptr [rbx+2]
fffff801`46f5c19b 440fb6d8        movzx   r11d,al
fffff801`46f5c19f 49c1e304        shl     r11,4
fffff801`46f5c1a3 4c3b2536811f00  cmp     r12,qword ptr [nt!PsInitialSystemProcess (fffff801`471542e0)]
fffff801`46f5c1aa 4c895c2450      mov     qword ptr [rsp+50h],r11
fffff801`46f5c1af 0f8449010000    je      nt!ExFreePoolWithTag+0x67e (fffff801`46f5c2fe)  Branch

nt!ExFreePoolWithTag+0x535:
fffff801`46f5c1b5 498b842410040000 mov     rax,qword ptr [r12+410h]
fffff801`46f5c1bd 4c8d053c4ecbff  lea     r8,[nt!MmFreeIndependentPages <PERF> (nt+0x0) (fffff801`46c11000)]
fffff801`46f5c1c4 458bd7          mov     r10d,r15d
fffff801`46f5c1c7 4889442440      mov     qword ptr [rsp+40h],rax
fffff801`46f5c1cc 4183e201        and     r10d,1
fffff801`46f5c1d0 4963d2          movsxd  rdx,r10d
fffff801`46f5c1d3 4889542438      mov     qword ptr [rsp+38h],rdx
fffff801`46f5c1d8 410fb68cd060395400 movzx ecx,byte ptr [r8+rdx*8+543960h]
fffff801`46f5c1e1 888c2440010000  mov     byte ptr [rsp+140h],cl
fffff801`46f5c1e8 488bca          mov     rcx,rdx
fffff801`46f5c1eb 48c1e107        shl     rcx,7
fffff801`46f5c1ef 48894c2458      mov     qword ptr [rsp+58h],rcx
fffff801`46f5c1f4 4c8d3408        lea     r14,[rax+rcx]
fffff801`46f5c1f8 410f0d0e        prefetchw [r14]
fffff801`46f5c1fc 4d8b3e          mov     r15,qword ptr [r14]
fffff801`46f5c1ff 498b4640        mov     rax,qword ptr [r14+40h]
fffff801`46f5c203 49397e50        cmp     qword ptr [r14+50h],rdi
fffff801`46f5c207 7470            je      nt!ExFreePoolWithTag+0x5f9 (fffff801`46f5c279)  Branch

nt!ExFreePoolWithTag+0x589:
fffff801`46f5c209 4c6bca38        imul    r9,rdx,38h
fffff801`46f5c20d 493bc7          cmp     rax,r15
fffff801`46f5c210 7667            jbe     nt!ExFreePoolWithTag+0x5f9 (fffff801`46f5c279)  Branch

nt!ExFreePoolWithTag+0x592:
fffff801`46f5c212 4f8b840148f54000 mov     r8,qword ptr [r9+r8+40F548h]
fffff801`46f5c21a 488bc8          mov     rcx,rax
fffff801`46f5c21d 492bcf          sub     rcx,r15
fffff801`46f5c220 493bc8          cmp     rcx,r8
fffff801`46f5c223 7654            jbe     nt!ExFreePoolWithTag+0x5f9 (fffff801`46f5c279)  Branch

nt!ExFreePoolWithTag+0x5a5:
fffff801`46f5c225 4d3bc3          cmp     r8,r11
fffff801`46f5c228 498bd3          mov     rdx,r11
fffff801`46f5c22b 488bc8          mov     rcx,rax
fffff801`46f5c22e 490f46d0        cmovbe  rdx,r8
fffff801`46f5c232 482bca          sub     rcx,rdx
fffff801`46f5c235 f0490fb14e40    lock cmpxchg qword ptr [r14+40h],rcx
fffff801`46f5c23b 753c            jne     nt!ExFreePoolWithTag+0x5f9 (fffff801`46f5c279)  Branch

nt!ExFreePoolWithTag+0x5bd:
fffff801`46f5c23d 488bc2          mov     rax,rdx
fffff801`46f5c240 f0490fc14648    lock xadd qword ptr [r14+48h],rax
fffff801`46f5c246 4803c2          add     rax,rdx
fffff801`46f5c249 488d0db04dcbff  lea     rcx,[nt!MmFreeIndependentPages <PERF> (nt+0x0) (fffff801`46c11000)]
fffff801`46f5c250 493b840948f54000 cmp     rax,qword ptr [r9+rcx+40F548h]
fffff801`46f5c258 761f            jbe     nt!ExFreePoolWithTag+0x5f9 (fffff801`46f5c279)  Branch

nt!ExFreePoolWithTag+0x5da:
fffff801`46f5c25a 4c8bc7          mov     r8,rdi
fffff801`46f5c25d 4d874648        xchg    r8,qword ptr [r14+48h]
fffff801`46f5c261 4d85c0          test    r8,r8
fffff801`46f5c264 7413            je      nt!ExFreePoolWithTag+0x5f9 (fffff801`46f5c279)  Branch

nt!ExFreePoolWithTag+0x5e6:
fffff801`46f5c266 4533c9          xor     r9d,r9d
fffff801`46f5c269 498bd6          mov     rdx,r14
fffff801`46f5c26c 418bca          mov     ecx,r10d
fffff801`46f5c26f e8985fd3ff      call    nt!PspReturnResourceQuota (fffff801`46c9220c)
fffff801`46f5c274 4c8b5c2450      mov     r11,qword ptr [rsp+50h]

nt!ExFreePoolWithTag+0x5f9:
fffff801`46f5c279 4d8bcb          mov     r9,r11
fffff801`46f5c27c 4c8d05bd530f00  lea     r8,[nt!PspSystemQuotaBlock (fffff801`47051640)]
fffff801`46f5c283 0f1f4000        nop     dword ptr [rax]
fffff801`46f5c287 660f1f840000000000 nop   word ptr [rax+rax]

nt!ExFreePoolWithTag+0x610:
fffff801`46f5c290 4d3bcf          cmp     r9,r15
fffff801`46f5c293 4d8bd7          mov     r10,r15
fffff801`46f5c296 498bcf          mov     rcx,r15
fffff801`46f5c299 488bd7          mov     rdx,rdi
fffff801`46f5c29c 4d0f42d1        cmovb   r10,r9
fffff801`46f5c2a0 498bc7          mov     rax,r15
fffff801`46f5c2a3 492bc9          sub     rcx,r9
fffff801`46f5c2a6 4d3bcf          cmp     r9,r15
fffff801`46f5c2a9 480f42d1        cmovb   rdx,rcx
fffff801`46f5c2ad f0490fb116      lock cmpxchg qword ptr [r14],rdx
fffff801`46f5c2b2 4c8bf8          mov     r15,rax
fffff801`46f5c2b5 75d9            jne     nt!ExFreePoolWithTag+0x610 (fffff801`46f5c290)  Branch

nt!ExFreePoolWithTag+0x637:
fffff801`46f5c2b7 4d2bca          sub     r9,r10
fffff801`46f5c2ba 7421            je      nt!ExFreePoolWithTag+0x65d (fffff801`46f5c2dd)  Branch

nt!ExFreePoolWithTag+0x63c:
fffff801`46f5c2bc 4c39442440      cmp     qword ptr [rsp+40h],r8
fffff801`46f5c2c1 0f8467130000    je      nt!ExFreePoolWithTag+0x19ae (fffff801`46f5d62e)  Branch

nt!ExFreePoolWithTag+0x647:
fffff801`46f5c2c7 4c8b742458      mov     r14,qword ptr [rsp+58h]
fffff801`46f5c2cc 4d03f0          add     r14,r8
fffff801`46f5c2cf 4c89442440      mov     qword ptr [rsp+40h],r8
fffff801`46f5c2d4 410f0d0e        prefetchw [r14]
fffff801`46f5c2d8 4d8b3e          mov     r15,qword ptr [r14]
fffff801`46f5c2db ebb3            jmp     nt!ExFreePoolWithTag+0x610 (fffff801`46f5c290)  Branch

nt!ExFreePoolWithTag+0x65d:
fffff801`46f5c2dd f684244001000004 test    byte ptr [rsp+140h],4
fffff801`46f5c2e5 448b7c2430      mov     r15d,dword ptr [rsp+30h]
fffff801`46f5c2ea 7412            je      nt!ExFreePoolWithTag+0x67e (fffff801`46f5c2fe)  Branch

nt!ExFreePoolWithTag+0x66c:
fffff801`46f5c2ec 49f7db          neg     r11
fffff801`46f5c2ef 488b442438      mov     rax,qword ptr [rsp+38h]
fffff801`46f5c2f4 f04d0fc19cc410030000 lock xadd qword ptr [r12+rax*8+310h],r11

nt!ExFreePoolWithTag+0x67e:
fffff801`46f5c2fe 8b5304          mov     edx,dword ptr [rbx+4]
fffff801`46f5c301 498bcc          mov     rcx,r12
fffff801`46f5c304 e8a74cd7ff      call    nt!ObDereferenceObjectDeferDeleteWithTag (fffff801`46cd0fb0)

nt!ExFreePoolWithTag+0x689:
fffff801`46f5c309 448ba42448010000 mov     r12d,dword ptr [rsp+148h]

nt!ExFreePoolWithTag+0x691:
fffff801`46f5c311 0fb74302        movzx   eax,word ptr [rbx+2]
fffff801`46f5c315 440fb6f0        movzx   r14d,al
fffff801`46f5c319 49c1e604        shl     r14,4

nt!ExFreePoolWithTag+0x69d:
fffff801`46f5c31d 8b055d801f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5c323 a907020000      test    eax,207h
fffff801`46f5c328 7455            je      nt!ExFreePoolWithTag+0x6ff (fffff801`46f5c37f)  Branch

nt!ExFreePoolWithTag+0x6aa:
fffff801`46f5c32a 0fbae009        bt      eax,9
fffff801`46f5c32e 7310            jae     nt!ExFreePoolWithTag+0x6c0 (fffff801`46f5c340)  Branch

nt!ExFreePoolWithTag+0x6b0:
fffff801`46f5c330 4585ff          test    r15d,r15d
fffff801`46f5c333 750b            jne     nt!ExFreePoolWithTag+0x6c0 (fffff801`46f5c340)  Branch

nt!ExFreePoolWithTag+0x6b5:
fffff801`46f5c335 498bd6          mov     rdx,r14
fffff801`46f5c338 488bcb          mov     rcx,rbx
fffff801`46f5c33b e8f4fefcff      call    nt!ExpCheckForLookaside (fffff801`46f2c234)

nt!ExFreePoolWithTag+0x6c0:
fffff801`46f5c340 8b053a801f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5c346 a801            test    al,1
fffff801`46f5c348 740b            je      nt!ExFreePoolWithTag+0x6d5 (fffff801`46f5c355)  Branch

nt!ExFreePoolWithTag+0x6ca:
fffff801`46f5c34a 498bd6          mov     rdx,r14
fffff801`46f5c34d 488bcb          mov     rcx,rbx
fffff801`46f5c350 e84b04f4ff      call    nt!KeCheckForTimer (fffff801`46e9c7a0)

nt!ExFreePoolWithTag+0x6d5:
fffff801`46f5c355 8b0525801f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5c35b a804            test    al,4
fffff801`46f5c35d 740b            je      nt!ExFreePoolWithTag+0x6ea (fffff801`46f5c36a)  Branch

nt!ExFreePoolWithTag+0x6df:
fffff801`46f5c35f 498bd6          mov     rdx,r14
fffff801`46f5c362 488bcb          mov     rcx,rbx
fffff801`46f5c365 e82aeffcff      call    nt!ExpCheckForResource (fffff801`46f2b294)

nt!ExFreePoolWithTag+0x6ea:
fffff801`46f5c36a 8b0510801f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5c370 a802            test    al,2
fffff801`46f5c372 740b            je      nt!ExFreePoolWithTag+0x6ff (fffff801`46f5c37f)  Branch

nt!ExFreePoolWithTag+0x6f4:
fffff801`46f5c374 498bd6          mov     rdx,r14
fffff801`46f5c377 488bcb          mov     rcx,rbx
fffff801`46f5c37a e89503fdff      call    nt!ExpCheckForWorker (fffff801`46f2c714)

nt!ExFreePoolWithTag+0x6ff:
fffff801`46f5c37f 8b05fb7f1f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5c385 a810            test    al,10h
fffff801`46f5c387 740b            je      nt!ExFreePoolWithTag+0x714 (fffff801`46f5c394)  Branch

nt!ExFreePoolWithTag+0x709:
fffff801`46f5c389 498bd6          mov     rdx,r14
fffff801`46f5c38c 488bcb          mov     rcx,rbx
fffff801`46f5c38f e808cb5e00      call    nt!VfFreePoolNotification (fffff801`47548e9c)

nt!ExFreePoolWithTag+0x714:
fffff801`46f5c394 8b056e6d1f00    mov     eax,dword ptr [nt!PoolHitTag (fffff801`47153108)]
fffff801`46f5c39a 443be0          cmp     r12d,eax
fffff801`46f5c39d 7501            jne     nt!ExFreePoolWithTag+0x720 (fffff801`46f5c3a0)  Branch

nt!ExFreePoolWithTag+0x71f:
fffff801`46f5c39f cc              int     3

nt!ExFreePoolWithTag+0x720:
fffff801`46f5c3a0 8b059e7f1f00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff801`47154344)]
fffff801`46f5c3a6 a841            test    al,41h
fffff801`46f5c3a8 741a            je      nt!ExFreePoolWithTag+0x744 (fffff801`46f5c3c4)  Branch

nt!ExFreePoolWithTag+0x72a:
fffff801`46f5c3aa 4c8b4c2448      mov     r9,qword ptr [rsp+48h]
fffff801`46f5c3af b9220e0000      mov     ecx,0E22h
fffff801`46f5c3b4 458bc4          mov     r8d,r12d
fffff801`46f5c3b7 4c89742420      mov     qword ptr [rsp+20h],r14
fffff801`46f5c3bc 418bd7          mov     edx,r15d
fffff801`46f5c3bf e87439e6ff      call    nt!EtwTracePool (fffff801`46dbfd38)

nt!ExFreePoolWithTag+0x744:
fffff801`46f5c3c4 458bd7          mov     r10d,r15d
fffff801`46f5c3c7 4183e220        and     r10d,20h
fffff801`46f5c3cb 7522            jne     nt!ExFreePoolWithTag+0x76f (fffff801`46f5c3ef)  Branch

nt!ExFreePoolWithTag+0x74d:
fffff801`46f5c3cd 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff801`46f5c3d5 4c8b1d54f40b00  mov     r11,qword ptr [nt!PoolTrackTableMask (fffff801`4701b830)]
fffff801`46f5c3dc 8bc8            mov     ecx,eax
fffff801`46f5c3de 488d051b4ccbff  lea     rax,[nt!MmFreeIndependentPages <PERF> (nt+0x0) (fffff801`46c11000)]
fffff801`46f5c3e5 4c8ba4c800804000 mov     r12,qword ptr [rax+rcx*8+408000h]
fffff801`46f5c3ed eb0e            jmp     nt!ExFreePoolWithTag+0x77d (fffff801`46f5c3fd)  Branch

nt!ExFreePoolWithTag+0x76f:
fffff801`46f5c3ef 4c8b2512f40b00  mov     r12,qword ptr [nt!ExpSessionPoolTrackTable (fffff801`4701b808)]
fffff801`46f5c3f6 4c8b1d03f40b00  mov     r11,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff801`4701b800)]

nt!ExFreePoolWithTag+0x77d:
fffff801`46f5c3fd 8b842448010000  mov     eax,dword ptr [rsp+148h]
fffff801`46f5c404 41b908000000    mov     r9d,8
fffff801`46f5c40a 4869c85f9e0000  imul    rcx,rax,9E5Fh
fffff801`46f5c411 488bd1          mov     rdx,rcx
fffff801`46f5c414 48c1ea20        shr     rdx,20h
fffff801`46f5c418 33d1            xor     edx,ecx
fffff801`46f5c41a 4123d3          and     edx,r11d
fffff801`46f5c41d 8bc2            mov     eax,edx
fffff801`46f5c41f 4c6bc038        imul    r8,rax,38h
fffff801`46f5c423 438b0404        mov     eax,dword ptr [r12+r8]
fffff801`46f5c427 89942440010000  mov     dword ptr [rsp+140h],edx
fffff801`46f5c42e 4b8d0c04        lea     rcx,[r12+r8]
fffff801`46f5c432 3b842448010000  cmp     eax,dword ptr [rsp+148h]
fffff801`46f5c439 7451            je      nt!ExFreePoolWithTag+0x80c (fffff801`46f5c48c)  Branch

nt!ExFreePoolWithTag+0x7bb:
fffff801`46f5c43b 0f1f440000      nop     dword ptr [rax+rax]

nt!ExFreePoolWithTag+0x7c0:
fffff801`46f5c440 85c0            test    eax,eax
fffff801`46f5c442 751a            jne     nt!ExFreePoolWithTag+0x7de (fffff801`46f5c45e)  Branch

nt!ExFreePoolWithTag+0x7c4:
fffff801`46f5c444 4585d2          test    r10d,r10d
fffff801`46f5c447 7515            jne     nt!ExFreePoolWithTag+0x7de (fffff801`46f5c45e)  Branch

nt!ExFreePoolWithTag+0x7c9:
fffff801`46f5c449 488b0588cb0b00  mov     rax,qword ptr [nt!PoolTrackTable (fffff801`47018fd8)]
fffff801`46f5c450 468b0c00        mov     r9d,dword ptr [rax+r8]
fffff801`46f5c454 4585c9          test    r9d,r9d
fffff801`46f5c457 7405            je      nt!ExFreePoolWithTag+0x7de (fffff801`46f5c45e)  Branch

nt!ExFreePoolWithTag+0x7d9:
fffff801`46f5c459 448909          mov     dword ptr [rcx],r9d
fffff801`46f5c45c eb11            jmp     nt!ExFreePoolWithTag+0x7ef (fffff801`46f5c46f)  Branch

nt!ExFreePoolWithTag+0x7de:
fffff801`46f5c45e 8d4201          lea     eax,[rdx+1]
fffff801`46f5c461 4123c3          and     eax,r11d
fffff801`46f5c464 8bd0            mov     edx,eax
fffff801`46f5c466 3b842440010000  cmp     eax,dword ptr [rsp+140h]
fffff801`46f5c46d 7433            je      nt!ExFreePoolWithTag+0x822 (fffff801`46f5c4a2)  Branch

nt!ExFreePoolWithTag+0x7ef:
fffff801`46f5c46f 8bc2            mov     eax,edx
fffff801`46f5c471 4c6bc038        imul    r8,rax,38h
fffff801`46f5c475 438b0404        mov     eax,dword ptr [r12+r8]
fffff801`46f5c479 4b8d0c04        lea     rcx,[r12+r8]
fffff801`46f5c47d 3b842448010000  cmp     eax,dword ptr [rsp+148h]
fffff801`46f5c484 75ba            jne     nt!ExFreePoolWithTag+0x7c0 (fffff801`46f5c440)  Branch

nt!ExFreePoolWithTag+0x806:
fffff801`46f5c486 41b908000000    mov     r9d,8

nt!ExFreePoolWithTag+0x80c:
fffff801`46f5c48c 4d8bc6          mov     r8,r14
fffff801`46f5c48f 49f7d8          neg     r8
fffff801`46f5c492 41f6c701        test    r15b,1
fffff801`46f5c496 751e            jne     nt!ExFreePoolWithTag+0x836 (fffff801`46f5c4b6)  Branch

nt!ExFreePoolWithTag+0x818:
fffff801`46f5c498 498bd1          mov     rdx,r9
fffff801`46f5c49b b818000000      mov     eax,18h
fffff801`46f5c4a0 eb1e            jmp     nt!ExFreePoolWithTag+0x840 (fffff801`46f5c4c0)  Branch

nt!ExFreePoolWithTag+0x822:
fffff801`46f5c4a2 8b8c2448010000  mov     ecx,dword ptr [rsp+148h]
fffff801`46f5c4a9 458bc7          mov     r8d,r15d
fffff801`46f5c4ac 498bd6          mov     rdx,r14
fffff801`46f5c4af e8ac3bd0ff      call    nt!ExpRemovePoolTrackerExpansion (fffff801`46c60060)
fffff801`46f5c4b4 eb15            jmp     nt!ExFreePoolWithTag+0x84b (fffff801`46f5c4cb)  Branch

nt!ExFreePoolWithTag+0x836:
fffff801`46f5c4b6 ba20000000      mov     edx,20h
fffff801`46f5c4bb b830000000      mov     eax,30h

nt!ExFreePoolWithTag+0x840:
fffff801`46f5c4c0 f048ff0408      lock inc qword ptr [rax+rcx]
fffff801`46f5c4c5 f04c0fc10411    lock xadd qword ptr [rcx+rdx],r8

nt!ExFreePoolWithTag+0x84b:
fffff801`46f5c4cb 41f6c740        test    r15b,40h
fffff801`46f5c4cf 7411            je      nt!ExFreePoolWithTag+0x862 (fffff801`46f5c4e2)  Branch

nt!ExFreePoolWithTag+0x851:
fffff801`46f5c4d1 4533c9          xor     r9d,r9d
fffff801`46f5c4d4 458bc7          mov     r8d,r15d
fffff801`46f5c4d7 498bd6          mov     rdx,r14
fffff801`46f5c4da 488bce          mov     rcx,rsi
fffff801`46f5c4dd e8bad4f6ff      call    nt!VerifierFreeTrackedPool (fffff801`46ec999c)

nt!ExFreePoolWithTag+0x862:
fffff801`46f5c4e2 498b4d28        mov     rcx,qword ptr [r13+28h]
fffff801`46f5c4e6 498d86fffdffff  lea     rax,[r14-201h]
fffff801`46f5c4ed 488d350c4bcbff  lea     rsi,[nt!MmFreeIndependentPages <PERF> (nt+0x0) (fffff801`46c11000)]
fffff801`46f5c4f4 483d7f0d0000    cmp     rax,0D7Fh
fffff801`46f5c4fa 772a            ja      nt!ExFreePoolWithTag+0x8a6 (fffff801`46f5c526)  Branch

nt!ExFreePoolWithTag+0x87c:
fffff801`46f5c4fc 4885c9          test    rcx,rcx
fffff801`46f5c4ff 7425            je      nt!ExFreePoolWithTag+0x8a6 (fffff801`46f5c526)  Branch

nt!ExFreePoolWithTag+0x881:
fffff801`46f5c501 418d560f        lea     edx,[r14+0Fh]
fffff801`46f5c505 48c1ea04        shr     rdx,4
fffff801`46f5c509 440fb6843230b13500 movzx r8d,byte ptr [rdx+rsi+35B130h]
fffff801`46f5c512 488bd3          mov     rdx,rbx
fffff801`46f5c515 4183c0df        add     r8d,0FFFFFFDFh
fffff801`46f5c519 e85240e6ff      call    nt!RtlpDynamicLookasideFree (fffff801`46dc0570)
fffff801`46f5c51e 85c0            test    eax,eax
fffff801`46f5c520 0f8550120000    jne     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x8a6:
fffff801`46f5c526 458b7514        mov     r14d,dword ptr [r13+14h]
fffff801`46f5c52a 418b8ddc000000  mov     ecx,dword ptr [r13+0DCh]
fffff801`46f5c531 4181e601000011  and     r14d,11000001h
fffff801`46f5c538 85c9            test    ecx,ecx
fffff801`46f5c53a 7415            je      nt!ExFreePoolWithTag+0x8d1 (fffff801`46f5c551)  Branch

nt!ExFreePoolWithTag+0x8bc:
fffff801`46f5c53c 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff801`46f5c545 3b8840060000    cmp     ecx,dword ptr [rax+640h]
fffff801`46f5c54b 7504            jne     nt!ExFreePoolWithTag+0x8d1 (fffff801`46f5c551)  Branch

nt!ExFreePoolWithTag+0x8cd:
fffff801`46f5c54d 4183ce01        or      r14d,1

nt!ExFreePoolWithTag+0x8d1:
fffff801`46f5c551 410fbae618      bt      r14d,18h
fffff801`46f5c556 726d            jb      nt!ExFreePoolWithTag+0x945 (fffff801`46f5c5c5)  Branch

nt!ExFreePoolWithTag+0x8d8:
fffff801`46f5c558 41397d18        cmp     dword ptr [r13+18h],edi
fffff801`46f5c55c 7467            je      nt!ExFreePoolWithTag+0x945 (fffff801`46f5c5c5)  Branch

nt!ExFreePoolWithTag+0x8de:
fffff801`46f5c55e 4533c9          xor     r9d,r9d
fffff801`46f5c561 458bc6          mov     r8d,r14d
fffff801`46f5c564 488bd3          mov     rdx,rbx
fffff801`46f5c567 498bcd          mov     rcx,r13
fffff801`46f5c56a e845f9faff      call    nt!RtlpHpExtrasGet (fffff801`46f0beb4)
fffff801`46f5c56f 4c8bc8          mov     r9,rax
fffff801`46f5c572 488d48ff        lea     rcx,[rax-1]
fffff801`46f5c576 4883f9fd        cmp     rcx,0FFFFFFFFFFFFFFFDh
fffff801`46f5c57a 7749            ja      nt!ExFreePoolWithTag+0x945 (fffff801`46f5c5c5)  Branch

nt!ExFreePoolWithTag+0x8fc:
fffff801`46f5c57c 0fb64002        movzx   eax,byte ptr [rax+2]
fffff801`46f5c580 a80f            test    al,0Fh
fffff801`46f5c582 7441            je      nt!ExFreePoolWithTag+0x945 (fffff801`46f5c5c5)  Branch

nt!ExFreePoolWithTag+0x904:
fffff801`46f5c584 0fb6c8          movzx   ecx,al
fffff801`46f5c587 83e10f          and     ecx,0Fh
fffff801`46f5c58a 0f84e6110000    je      nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x910:
fffff801`46f5c590 66ffc9          dec     cx
fffff801`46f5c593 6683f901        cmp     cx,1
fffff801`46f5c597 0f83d9110000    jae     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x91d:
fffff801`46f5c59d 0fb7c1          movzx   eax,cx
fffff801`46f5c5a0 4983c110        add     r9,10h
fffff801`46f5c5a4 41b803000000    mov     r8d,3
fffff801`46f5c5aa 488bd3          mov     rdx,rbx
fffff801`46f5c5ad 498bcd          mov     rcx,r13
fffff801`46f5c5b0 488b84c630c83500 mov     rax,qword ptr [rsi+rax*8+35C830h]
fffff801`46f5c5b8 e80308e7ff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`46f5c5bd 85c0            test    eax,eax
fffff801`46f5c5bf 0f88b1110000    js      nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x945:
fffff801`46f5c5c5 41f7451400000010 test    dword ptr [r13+14h],10000000h
fffff801`46f5c5cd 7436            je      nt!ExFreePoolWithTag+0x985 (fffff801`46f5c605)  Branch

nt!ExFreePoolWithTag+0x94f:
fffff801`46f5c5cf 458bc6          mov     r8d,r14d
fffff801`46f5c5d2 488bd3          mov     rdx,rbx
fffff801`46f5c5d5 498bcd          mov     rcx,r13
fffff801`46f5c5d8 e8333bd7ff      call    nt!RtlpHpSizeHeap (fffff801`46cd0110)
fffff801`46f5c5dd 4883f8ff        cmp     rax,0FFFFFFFFFFFFFFFFh
fffff801`46f5c5e1 7522            jne     nt!ExFreePoolWithTag+0x985 (fffff801`46f5c605)  Branch

nt!ExFreePoolWithTag+0x963:
fffff801`46f5c5e3 48897c2428      mov     qword ptr [rsp+28h],rdi
fffff801`46f5c5e8 4533c9          xor     r9d,r9d
fffff801`46f5c5eb 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff801`46f5c5f0 4c8bc3          mov     r8,rbx
fffff801`46f5c5f3 498bd5          mov     rdx,r13

nt!ExFreePoolWithTag+0x976:
fffff801`46f5c5f6 b909000000      mov     ecx,9

nt!ExFreePoolWithTag+0x97b:
fffff801`46f5c5fb e8cce6faff      call    nt!RtlpLogHeapFailure (fffff801`46f0accc)
fffff801`46f5c600 e971110000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x985:
fffff801`46f5c605 410f104500      movups  xmm0,xmmword ptr [r13]
fffff801`46f5c60a 6685db          test    bx,bx
fffff801`46f5c60d 754c            jne     nt!ExFreePoolWithTag+0x9db (fffff801`46f5c65b)  Branch

nt!ExFreePoolWithTag+0x98f:
fffff801`46f5c60f 488d8c24e0000000 lea     rcx,[rsp+0E0h]
fffff801`46f5c617 660f7f8424e0000000 movdqa xmmword ptr [rsp+0E0h],xmm0
fffff801`46f5c620 e88b6fd5ff      call    nt!RtlpHpEnvGetHeapManager (fffff801`46cb35b0)
fffff801`46f5c625 488bd3          mov     rdx,rbx
fffff801`46f5c628 482b5048        sub     rdx,qword ptr [rax+48h]
fffff801`46f5c62c 488d4808        lea     rcx,[rax+8]
fffff801`46f5c630 48c1ea14        shr     rdx,14h
fffff801`46f5c634 4803d2          add     rdx,rdx
fffff801`46f5c637 e8d8f2d0ff      call    nt!RtlCSparseBitmapBitmaskRead (fffff801`46c6b914)
fffff801`46f5c63c 4885c0          test    rax,rax
fffff801`46f5c63f 7407            je      nt!ExFreePoolWithTag+0x9c8 (fffff801`46f5c648)  Branch

nt!ExFreePoolWithTag+0x9c1:
fffff801`46f5c641 ffc8            dec     eax
fffff801`46f5c643 83f802          cmp     eax,2
fffff801`46f5c646 7515            jne     nt!ExFreePoolWithTag+0x9dd (fffff801`46f5c65d)  Branch

nt!ExFreePoolWithTag+0x9c8:
fffff801`46f5c648 458bc6          mov     r8d,r14d
fffff801`46f5c64b 488bd3          mov     rdx,rbx
fffff801`46f5c64e 498bcd          mov     rcx,r13
fffff801`46f5c651 e876f7d0ff      call    nt!RtlpHpLargeFree (fffff801`46c6bdcc)
fffff801`46f5c656 e91b110000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x9db:
fffff801`46f5c65b 8bc7            mov     eax,edi

nt!ExFreePoolWithTag+0x9dd:
fffff801`46f5c65d 4c8b059c3b0c00  mov     r8,qword ptr [nt!RtlpHpHeapGlobals (fffff801`47020200)]
fffff801`46f5c664 48b9ad4ee6a2ad4ee6a2 mov rcx,0A2E64EADA2E64EADh
fffff801`46f5c66e 4898            cdqe
fffff801`46f5c670 4c8d2440        lea     r12,[rax+rax*2]
fffff801`46f5c674 49c1e406        shl     r12,6
fffff801`46f5c678 4981c400010000  add     r12,100h
fffff801`46f5c67f 4d03e5          add     r12,r13
fffff801`46f5c682 4d8b1424        mov     r10,qword ptr [r12]
fffff801`46f5c686 4d8bca          mov     r9,r10
fffff801`46f5c689 4c23cb          and     r9,rbx
fffff801`46f5c68c 498b4110        mov     rax,qword ptr [r9+10h]
fffff801`46f5c690 4933c1          xor     rax,r9
fffff801`46f5c693 4933c4          xor     rax,r12
fffff801`46f5c696 4933c0          xor     rax,r8
fffff801`46f5c699 483bc1          cmp     rax,rcx
fffff801`46f5c69c 753b            jne     nt!ExFreePoolWithTag+0xa59 (fffff801`46f5c6d9)  Branch

nt!ExFreePoolWithTag+0xa1e:
fffff801`46f5c69e 410fb64c2408    movzx   ecx,byte ptr [r12+8]
fffff801`46f5c6a4 8bc3            mov     eax,ebx
fffff801`46f5c6a6 412bc1          sub     eax,r9d
fffff801`46f5c6a9 8bd0            mov     edx,eax
fffff801`46f5c6ab 48d3ea          shr     rdx,cl
fffff801`46f5c6ae 48c1e205        shl     rdx,5
fffff801`46f5c6b2 4903d1          add     rdx,r9
fffff801`46f5c6b5 7422            je      nt!ExFreePoolWithTag+0xa59 (fffff801`46f5c6d9)  Branch

nt!ExFreePoolWithTag+0xa37:
fffff801`46f5c6b7 0fb64218        movzx   eax,byte ptr [rdx+18h]
fffff801`46f5c6bb a801            test    al,1
fffff801`46f5c6bd 741a            je      nt!ExFreePoolWithTag+0xa59 (fffff801`46f5c6d9)  Branch

nt!ExFreePoolWithTag+0xa3f:
fffff801`46f5c6bf a802            test    al,2
fffff801`46f5c6c1 7430            je      nt!ExFreePoolWithTag+0xa73 (fffff801`46f5c6f3)  Branch

nt!ExFreePoolWithTag+0xa43:
fffff801`46f5c6c3 240c            and     al,0Ch
fffff801`46f5c6c5 3c08            cmp     al,8
fffff801`46f5c6c7 734e            jae     nt!ExFreePoolWithTag+0xa97 (fffff801`46f5c717)  Branch

nt!ExFreePoolWithTag+0xa49:
fffff801`46f5c6c9 b801000000      mov     eax,1
fffff801`46f5c6ce d3e0            shl     eax,cl
fffff801`46f5c6d0 ffc8            dec     eax
fffff801`46f5c6d2 4898            cdqe
fffff801`46f5c6d4 4885c3          test    rbx,rax
fffff801`46f5c6d7 743e            je      nt!ExFreePoolWithTag+0xa97 (fffff801`46f5c717)  Branch

nt!ExFreePoolWithTag+0xa59:
fffff801`46f5c6d9 498b542438      mov     rdx,qword ptr [r12+38h]
fffff801`46f5c6de 4533c9          xor     r9d,r9d
fffff801`46f5c6e1 48897c2428      mov     qword ptr [rsp+28h],rdi
fffff801`46f5c6e6 4c8bc3          mov     r8,rbx
fffff801`46f5c6e9 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff801`46f5c6ee e903ffffff      jmp     nt!ExFreePoolWithTag+0x976 (fffff801`46f5c5f6)  Branch

nt!ExFreePoolWithTag+0xa73:
fffff801`46f5c6f3 0fb6421f        movzx   eax,byte ptr [rdx+1Fh]
fffff801`46f5c6f7 48c1e005        shl     rax,5
fffff801`46f5c6fb 482bd0          sub     rdx,rax
fffff801`46f5c6fe 440fb64a18      movzx   r9d,byte ptr [rdx+18h]
fffff801`46f5c703 410fb6c1        movzx   eax,r9b
fffff801`46f5c707 2403            and     al,3
fffff801`46f5c709 3c03            cmp     al,3
fffff801`46f5c70b 75cc            jne     nt!ExFreePoolWithTag+0xa59 (fffff801`46f5c6d9)  Branch

nt!ExFreePoolWithTag+0xa8d:
fffff801`46f5c70d 4180e10c        and     r9b,0Ch
fffff801`46f5c711 4180f908        cmp     r9b,8
fffff801`46f5c715 72c2            jb      nt!ExFreePoolWithTag+0xa59 (fffff801`46f5c6d9)  Branch

nt!ExFreePoolWithTag+0xa97:
fffff801`46f5c717 488bc2          mov     rax,rdx
fffff801`46f5c71a 4923c2          and     rax,r10
fffff801`46f5c71d 4c8bd2          mov     r10,rdx
fffff801`46f5c720 4c2bd0          sub     r10,rax
fffff801`46f5c723 49c1fa05        sar     r10,5
fffff801`46f5c727 49d3e2          shl     r10,cl
fffff801`46f5c72a 4c03d0          add     r10,rax
fffff801`46f5c72d 493bda          cmp     rbx,r10
fffff801`46f5c730 0f86f9010000    jbe     nt!ExFreePoolWithTag+0xcaf (fffff801`46f5c92f)  Branch

nt!ExFreePoolWithTag+0xab6:
fffff801`46f5c736 0fb64218        movzx   eax,byte ptr [rdx+18h]
fffff801`46f5c73a 240c            and     al,0Ch
fffff801`46f5c73c 3c08            cmp     al,8
fffff801`46f5c73e 7518            jne     nt!ExFreePoolWithTag+0xad8 (fffff801`46f5c758)  Branch

nt!ExFreePoolWithTag+0xac0:
fffff801`46f5c740 498b4c2418      mov     rcx,qword ptr [r12+18h]
fffff801`46f5c745 458bce          mov     r9d,r14d
fffff801`46f5c748 4c8bc3          mov     r8,rbx
fffff801`46f5c74b 498bd2          mov     rdx,r10
fffff801`46f5c74e e8dd3cd7ff      call    nt!RtlpHpLfhSubsegmentFreeBlock (fffff801`46cd0430)
fffff801`46f5c753 e91e100000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0xad8:
fffff801`46f5c758 4d8b7c2420      mov     r15,qword ptr [r12+20h]
fffff801`46f5c75d 488d73f0        lea     rsi,[rbx-10h]
fffff801`46f5c761 458b9fb0000000  mov     r11d,dword ptr [r15+0B0h]
fffff801`46f5c768 41f6c301        test    r11b,1
fffff801`46f5c76c 7410            je      nt!ExFreePoolWithTag+0xafe (fffff801`46f5c77e)  Branch

nt!ExFreePoolWithTag+0xaee:
fffff801`46f5c76e 488d4610        lea     rax,[rsi+10h]
fffff801`46f5c772 48a9ff0f0000    test    rax,0FFFh
fffff801`46f5c778 7504            jne     nt!ExFreePoolWithTag+0xafe (fffff801`46f5c77e)  Branch

nt!ExFreePoolWithTag+0xafa:
fffff801`46f5c77a 4883c6f0        add     rsi,0FFFFFFFFFFFFFFF0h

nt!ExFreePoolWithTag+0xafe:
fffff801`46f5c77e 4d85d2          test    r10,r10
fffff801`46f5c781 0f85a7000000    jne     nt!ExFreePoolWithTag+0xbae (fffff801`46f5c82e)  Branch

nt!ExFreePoolWithTag+0xb07:
fffff801`46f5c787 488b0e          mov     rcx,qword ptr [rsi]
fffff801`46f5c78a 498bd0          mov     rdx,r8
fffff801`46f5c78d 48c1ea20        shr     rdx,20h
fffff801`46f5c791 4c8bce          mov     r9,rsi
fffff801`46f5c794 48c1e920        shr     rcx,20h
fffff801`46f5c798 8bc2            mov     eax,edx
fffff801`46f5c79a 33c1            xor     eax,ecx
fffff801`46f5c79c 49c1e920        shr     r9,20h
fffff801`46f5c7a0 4133c1          xor     eax,r9d
fffff801`46f5c7a3 a90000ff00      test    eax,0FF0000h
fffff801`46f5c7a8 740d            je      nt!ExFreePoolWithTag+0xb37 (fffff801`46f5c7b7)  Branch

nt!ExFreePoolWithTag+0xb2a:
fffff801`46f5c7aa 8b4608          mov     eax,dword ptr [rsi+8]
fffff801`46f5c7ad 4133c0          xor     eax,r8d
fffff801`46f5c7b0 33c6            xor     eax,esi
fffff801`46f5c7b2 0fb6c8          movzx   ecx,al
fffff801`46f5c7b5 eb65            jmp     nt!ExFreePoolWithTag+0xb9c (fffff801`46f5c81c)  Branch

nt!ExFreePoolWithTag+0xb37:
fffff801`46f5c7b7 0fb7c0          movzx   eax,ax
fffff801`46f5c7ba 85c0            test    eax,eax
fffff801`46f5c7bc 745c            je      nt!ExFreePoolWithTag+0xb9a (fffff801`46f5c81a)  Branch

nt!ExFreePoolWithTag+0xb3e:
fffff801`46f5c7be 4933c9          xor     rcx,r9
fffff801`46f5c7c1 448bea          mov     r13d,edx
fffff801`46f5c7c4 4933cd          xor     rcx,r13
fffff801`46f5c7c7 4c8bd6          mov     r10,rsi
fffff801`46f5c7ca 0fb7c1          movzx   eax,cx
fffff801`46f5c7cd 48c1e004        shl     rax,4
fffff801`46f5c7d1 4c2bd0          sub     r10,rax
fffff801`46f5c7d4 4d8bca          mov     r9,r10
fffff801`46f5c7d7 49c1e920        shr     r9,20h
fffff801`46f5c7db 498b0a          mov     rcx,qword ptr [r10]
fffff801`46f5c7de 48c1e920        shr     rcx,20h
fffff801`46f5c7e2 8bc1            mov     eax,ecx
fffff801`46f5c7e4 33c2            xor     eax,edx
fffff801`46f5c7e6 4133c1          xor     eax,r9d
fffff801`46f5c7e9 a90000ff00      test    eax,0FF0000h
fffff801`46f5c7ee 7517            jne     nt!ExFreePoolWithTag+0xb87 (fffff801`46f5c807)  Branch

nt!ExFreePoolWithTag+0xb70:
fffff801`46f5c7f0 0fb7c0          movzx   eax,ax
fffff801`46f5c7f3 85c0            test    eax,eax
fffff801`46f5c7f5 741f            je      nt!ExFreePoolWithTag+0xb96 (fffff801`46f5c816)  Branch

nt!ExFreePoolWithTag+0xb77:
fffff801`46f5c7f7 4933c9          xor     rcx,r9
fffff801`46f5c7fa 4933cd          xor     rcx,r13
fffff801`46f5c7fd 0fb7c1          movzx   eax,cx
fffff801`46f5c800 48c1e004        shl     rax,4
fffff801`46f5c804 4c2bd0          sub     r10,rax

nt!ExFreePoolWithTag+0xb87:
fffff801`46f5c807 418b4208        mov     eax,dword ptr [r10+8]
fffff801`46f5c80b 4133c0          xor     eax,r8d
fffff801`46f5c80e 4133c2          xor     eax,r10d
fffff801`46f5c811 0fb6c8          movzx   ecx,al
fffff801`46f5c814 eb09            jmp     nt!ExFreePoolWithTag+0xb9f (fffff801`46f5c81f)  Branch

nt!ExFreePoolWithTag+0xb96:
fffff801`46f5c816 8bcf            mov     ecx,edi
fffff801`46f5c818 eb05            jmp     nt!ExFreePoolWithTag+0xb9f (fffff801`46f5c81f)  Branch

nt!ExFreePoolWithTag+0xb9a:
fffff801`46f5c81a 8bcf            mov     ecx,edi

nt!ExFreePoolWithTag+0xb9c:
fffff801`46f5c81c 4c8bd6          mov     r10,rsi

nt!ExFreePoolWithTag+0xb9f:
fffff801`46f5c81f c1e10c          shl     ecx,0Ch
fffff801`46f5c822 8bc1            mov     eax,ecx
fffff801`46f5c824 4c2bd0          sub     r10,rax
fffff801`46f5c827 4981e200f0ffff  and     r10,0FFFFFFFFFFFFF000h

nt!ExFreePoolWithTag+0xbae:
fffff801`46f5c82e 410fb74a22      movzx   ecx,word ptr [r10+22h]
fffff801`46f5c833 b8ed2b0000      mov     eax,2BEDh
fffff801`46f5c838 6641334a20      xor     cx,word ptr [r10+20h]
fffff801`46f5c83d 6633c8          xor     cx,ax
fffff801`46f5c840 b8ff7f0000      mov     eax,7FFFh
fffff801`46f5c845 6685c8          test    ax,cx
fffff801`46f5c848 7423            je      nt!ExFreePoolWithTag+0xbed (fffff801`46f5c86d)  Branch

nt!ExFreePoolWithTag+0xbca:
fffff801`46f5c84a 498b9780000000  mov     rdx,qword ptr [r15+80h]
fffff801`46f5c851 4d8bc2          mov     r8,r10
fffff801`46f5c854 4933d7          xor     rdx,r15
fffff801`46f5c857 48897c2428      mov     qword ptr [rsp+28h],rdi
fffff801`46f5c85c 4533c9          xor     r9d,r9d
fffff801`46f5c85f 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff801`46f5c864 418d4912        lea     ecx,[r9+12h]
fffff801`46f5c868 e98efdffff      jmp     nt!ExFreePoolWithTag+0x97b (fffff801`46f5c5fb)  Branch

nt!ExFreePoolWithTag+0xbed:
fffff801`46f5c86d 488b06          mov     rax,qword ptr [rsi]
fffff801`46f5c870 488bd6          mov     rdx,rsi
fffff801`46f5c873 48c1ea20        shr     rdx,20h
fffff801`46f5c877 48c1e820        shr     rax,20h
fffff801`46f5c87b 33d0            xor     edx,eax
fffff801`46f5c87d 49c1e820        shr     r8,20h
fffff801`46f5c881 4133d0          xor     edx,r8d
fffff801`46f5c884 f7c20000ff00    test    edx,0FF0000h
fffff801`46f5c88a 7524            jne     nt!ExFreePoolWithTag+0xc30 (fffff801`46f5c8b0)  Branch

nt!ExFreePoolWithTag+0xc0c:
fffff801`46f5c88c 498b9780000000  mov     rdx,qword ptr [r15+80h]
fffff801`46f5c893 4c8bce          mov     r9,rsi
fffff801`46f5c896 48897c2428      mov     qword ptr [rsp+28h],rdi
fffff801`46f5c89b 4933d7          xor     rdx,r15
fffff801`46f5c89e 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff801`46f5c8a3 4c8bc3          mov     r8,rbx
fffff801`46f5c8a6 b908000000      mov     ecx,8
fffff801`46f5c8ab e94bfdffff      jmp     nt!ExFreePoolWithTag+0x97b (fffff801`46f5c5fb)  Branch

nt!ExFreePoolWithTag+0xc30:
fffff801`46f5c8b0 0fb75e02        movzx   ebx,word ptr [rsi+2]
fffff801`46f5c8b4 8bc6            mov     eax,esi
fffff801`46f5c8b6 c1e810          shr     eax,10h
fffff801`46f5c8b9 33d8            xor     ebx,eax
fffff801`46f5c8bb 0fb70540390c00  movzx   eax,word ptr [nt!RtlpHpHeapGlobals+0x2 (fffff801`47020202)]
fffff801`46f5c8c2 33d8            xor     ebx,eax
fffff801`46f5c8c4 c1e304          shl     ebx,4
fffff801`46f5c8c7 83eb10          sub     ebx,10h
fffff801`46f5c8ca 41f6c304        test    r11b,4
fffff801`46f5c8ce 742a            je      nt!ExFreePoolWithTag+0xc7a (fffff801`46f5c8fa)  Branch

nt!ExFreePoolWithTag+0xc50:
fffff801`46f5c8d0 81fb00100000    cmp     ebx,1000h
fffff801`46f5c8d6 7322            jae     nt!ExFreePoolWithTag+0xc7a (fffff801`46f5c8fa)  Branch

nt!ExFreePoolWithTag+0xc58:
fffff801`46f5c8d8 498d4f40        lea     rcx,[r15+40h]
fffff801`46f5c8dc e85f44d1ff      call    nt!ExQueryDepthSList (fffff801`46c70d40)
fffff801`46f5c8e1 6683f820        cmp     ax,20h
fffff801`46f5c8e5 730b            jae     nt!ExFreePoolWithTag+0xc72 (fffff801`46f5c8f2)  Branch

nt!ExFreePoolWithTag+0xc67:
fffff801`46f5c8e7 488d5610        lea     rdx,[rsi+10h]
fffff801`46f5c8eb e85c29e6ff      call    nt!RtlInterlockedPushEntrySList (fffff801`46dbf24c)
fffff801`46f5c8f0 eb1a            jmp     nt!ExFreePoolWithTag+0xc8c (fffff801`46f5c90c)  Branch

nt!ExFreePoolWithTag+0xc72:
fffff801`46f5c8f2 e88933e6ff      call    nt!RtlpHpVsDelayFreeContextFlush (fffff801`46dbfc80)
fffff801`46f5c8f7 488bf8          mov     rdi,rax

nt!ExFreePoolWithTag+0xc7a:
fffff801`46f5c8fa 4c8d4610        lea     r8,[rsi+10h]
fffff801`46f5c8fe 418bd6          mov     edx,r14d
fffff801`46f5c901 498bcf          mov     rcx,r15
fffff801`46f5c904 498938          mov     qword ptr [r8],rdi
fffff801`46f5c907 e80032e6ff      call    nt!RtlpHpVsContextFreeList (fffff801`46dbfb0c)

nt!ExFreePoolWithTag+0xc8c:
fffff801`46f5c90c 498b4c2418      mov     rcx,qword ptr [r12+18h]
fffff801`46f5c911 0fb7413c        movzx   eax,word ptr [rcx+3Ch]
fffff801`46f5c915 83e810          sub     eax,10h
fffff801`46f5c918 3bd8            cmp     ebx,eax
fffff801`46f5c91a 0f87560e0000    ja      nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0xca0:
fffff801`46f5c920 4533c0          xor     r8d,r8d
fffff801`46f5c923 8bd3            mov     edx,ebx
fffff801`46f5c925 e8c233d1ff      call    nt!RtlpHpLfhBucketUpdateStats (fffff801`46c6fcec)
fffff801`46f5c92a e9470e0000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0xcaf:
fffff801`46f5c92f 458bce          mov     r9d,r14d
fffff801`46f5c932 498bcc          mov     rcx,r12
fffff801`46f5c935 e8a60bd1ff      call    nt!RtlpHpSegPageRangeShrink (fffff801`46c6d4e0)
fffff801`46f5c93a e9370e0000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0xcbf:
fffff801`46f5c93f 8b059fc60b00    mov     eax,dword ptr [nt!ExpSpecialAllocations (fffff801`47018fe4)]
fffff801`46f5c945 85c0            test    eax,eax
fffff801`46f5c947 0f848f010000    je      nt!ExFreePoolWithTag+0xe5c (fffff801`46f5cadc)  Branch

nt!ExFreePoolWithTag+0xccd:
fffff801`46f5c94d e8ea8dceff      call    nt!ExIsSpecialPoolAddress (fffff801`46c4573c)
fffff801`46f5c952 83f801          cmp     eax,1
fffff801`46f5c955 0f8581010000    jne     nt!ExFreePoolWithTag+0xe5c (fffff801`46f5cadc)  Branch

nt!ExFreePoolWithTag+0xcdb:
fffff801`46f5c95b f0ff0d82c60b00  lock dec dword ptr [nt!ExpSpecialAllocations (fffff801`47018fe4)]
fffff801`46f5c962 ba00100000      mov     edx,1000h
fffff801`46f5c967 8bde            mov     ebx,esi
fffff801`46f5c969 4533c0          xor     r8d,r8d
fffff801`46f5c96c 81e3ff0f0000    and     ebx,0FFFh
fffff801`46f5c972 488bce          mov     rcx,rsi
fffff801`46f5c975 2bd3            sub     edx,ebx
fffff801`46f5c977 e8a077cdff      call    nt!ExpFreePoolChecks (fffff801`46c3411c)
fffff801`46f5c97c 4c8bce          mov     r9,rsi
fffff801`46f5c97f 4981e100f0ffff  and     r9,0FFFFFFFFFFFFF000h
fffff801`46f5c986 4d8bd1          mov     r10,r9
fffff801`46f5c989 48f7c6ff0f0000  test    rsi,0FFFh
fffff801`46f5c990 7507            jne     nt!ExFreePoolWithTag+0xd19 (fffff801`46f5c999)  Branch

nt!ExFreePoolWithTag+0xd12:
fffff801`46f5c992 4d8d91f00f0000  lea     r10,[r9+0FF0h]

nt!ExFreePoolWithTag+0xd19:
fffff801`46f5c999 488bce          mov     rcx,rsi
fffff801`46f5c99c e86304f6ff      call    nt!MmQuerySpecialPoolBlockType (fffff801`46ebce04)
fffff801`46f5c9a1 85db            test    ebx,ebx
fffff801`46f5c9a3 498d89f00f0000  lea     rcx,[r9+0FF0h]
fffff801`46f5c9aa 418b5a04        mov     ebx,dword ptr [r10+4]
fffff801`46f5c9ae 448bf8          mov     r15d,eax
fffff801`46f5c9b1 4c0f44c9        cmove   r9,rcx
fffff801`46f5c9b5 8b0d4d671f00    mov     ecx,dword ptr [nt!PoolHitTag (fffff801`47153108)]
fffff801`46f5c9bb 418b39          mov     edi,dword ptr [r9]
fffff801`46f5c9be 81e7ff0f0000    and     edi,0FFFh
fffff801`46f5c9c4 3bd9            cmp     ebx,ecx
fffff801`46f5c9c6 7501            jne     nt!ExFreePoolWithTag+0xd49 (fffff801`46f5c9c9)  Branch

nt!ExFreePoolWithTag+0xd48:
fffff801`46f5c9c8 cc              int     3

nt!ExFreePoolWithTag+0xd49:
fffff801`46f5c9c9 8b0575791f00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff801`47154344)]
fffff801`46f5c9cf a841            test    al,41h
fffff801`46f5c9d1 7418            je      nt!ExFreePoolWithTag+0xd6b (fffff801`46f5c9eb)  Branch

nt!ExFreePoolWithTag+0xd53:
fffff801`46f5c9d3 b9220e0000      mov     ecx,0E22h
fffff801`46f5c9d8 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff801`46f5c9dd 4c8bce          mov     r9,rsi
fffff801`46f5c9e0 448bc3          mov     r8d,ebx
fffff801`46f5c9e3 418bd7          mov     edx,r15d
fffff801`46f5c9e6 e84d33e6ff      call    nt!EtwTracePool (fffff801`46dbfd38)

nt!ExFreePoolWithTag+0xd6b:
fffff801`46f5c9eb 458bd7          mov     r10d,r15d
fffff801`46f5c9ee 4183e220        and     r10d,20h
fffff801`46f5c9f2 7522            jne     nt!ExFreePoolWithTag+0xd96 (fffff801`46f5ca16)  Branch

nt!ExFreePoolWithTag+0xd74:
fffff801`46f5c9f4 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff801`46f5c9fc 4c8b1d2dee0b00  mov     r11,qword ptr [nt!PoolTrackTableMask (fffff801`4701b830)]
fffff801`46f5ca03 8bc8            mov     ecx,eax
fffff801`46f5ca05 488d05f445cbff  lea     rax,[nt!MmFreeIndependentPages <PERF> (nt+0x0) (fffff801`46c11000)]
fffff801`46f5ca0c 4c8bb4c800804000 mov     r14,qword ptr [rax+rcx*8+408000h]
fffff801`46f5ca14 eb0e            jmp     nt!ExFreePoolWithTag+0xda4 (fffff801`46f5ca24)  Branch

nt!ExFreePoolWithTag+0xd96:
fffff801`46f5ca16 4c8b35ebed0b00  mov     r14,qword ptr [nt!ExpSessionPoolTrackTable (fffff801`4701b808)]
fffff801`46f5ca1d 4c8b1ddced0b00  mov     r11,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff801`4701b800)]

nt!ExFreePoolWithTag+0xda4:
fffff801`46f5ca24 4869cb5f9e0000  imul    rcx,rbx,9E5Fh
fffff801`46f5ca2b 488bd1          mov     rdx,rcx
fffff801`46f5ca2e 48c1ea20        shr     rdx,20h
fffff801`46f5ca32 33d1            xor     edx,ecx
fffff801`46f5ca34 4123d3          and     edx,r11d
fffff801`46f5ca37 8bc2            mov     eax,edx
fffff801`46f5ca39 448be2          mov     r12d,edx
fffff801`46f5ca3c 4c6bc038        imul    r8,rax,38h
fffff801`46f5ca40 438b0406        mov     eax,dword ptr [r14+r8]
fffff801`46f5ca44 4b8d0c06        lea     rcx,[r14+r8]
fffff801`46f5ca48 3bc3            cmp     eax,ebx
fffff801`46f5ca4a 7441            je      nt!ExFreePoolWithTag+0xe0d (fffff801`46f5ca8d)  Branch

nt!ExFreePoolWithTag+0xdcc:
fffff801`46f5ca4c 0f1f4000        nop     dword ptr [rax]

nt!ExFreePoolWithTag+0xdd0:
fffff801`46f5ca50 85c0            test    eax,eax
fffff801`46f5ca52 751a            jne     nt!ExFreePoolWithTag+0xdee (fffff801`46f5ca6e)  Branch

nt!ExFreePoolWithTag+0xdd4:
fffff801`46f5ca54 4585d2          test    r10d,r10d
fffff801`46f5ca57 7515            jne     nt!ExFreePoolWithTag+0xdee (fffff801`46f5ca6e)  Branch

nt!ExFreePoolWithTag+0xdd9:
fffff801`46f5ca59 488b0578c50b00  mov     rax,qword ptr [nt!PoolTrackTable (fffff801`47018fd8)]
fffff801`46f5ca60 458b0c00        mov     r9d,dword ptr [r8+rax]
fffff801`46f5ca64 4585c9          test    r9d,r9d
fffff801`46f5ca67 7405            je      nt!ExFreePoolWithTag+0xdee (fffff801`46f5ca6e)  Branch

nt!ExFreePoolWithTag+0xde9:
fffff801`46f5ca69 448909          mov     dword ptr [rcx],r9d
fffff801`46f5ca6c eb0d            jmp     nt!ExFreePoolWithTag+0xdfb (fffff801`46f5ca7b)  Branch

nt!ExFreePoolWithTag+0xdee:
fffff801`46f5ca6e 8d4201          lea     eax,[rdx+1]
fffff801`46f5ca71 4123c3          and     eax,r11d
fffff801`46f5ca74 8bd0            mov     edx,eax
fffff801`46f5ca76 413bc4          cmp     eax,r12d
fffff801`46f5ca79 7425            je      nt!ExFreePoolWithTag+0xe20 (fffff801`46f5caa0)  Branch

nt!ExFreePoolWithTag+0xdfb:
fffff801`46f5ca7b 8bc2            mov     eax,edx
fffff801`46f5ca7d 4c6bc038        imul    r8,rax,38h
fffff801`46f5ca81 438b0406        mov     eax,dword ptr [r14+r8]
fffff801`46f5ca85 4b8d0c06        lea     rcx,[r14+r8]
fffff801`46f5ca89 3bc3            cmp     eax,ebx
fffff801`46f5ca8b 75c3            jne     nt!ExFreePoolWithTag+0xdd0 (fffff801`46f5ca50)  Branch

nt!ExFreePoolWithTag+0xe0d:
fffff801`46f5ca8d 48f7df          neg     rdi
fffff801`46f5ca90 41f6c701        test    r15b,1
fffff801`46f5ca94 7524            jne     nt!ExFreePoolWithTag+0xe3a (fffff801`46f5caba)  Branch

nt!ExFreePoolWithTag+0xe16:
fffff801`46f5ca96 ba08000000      mov     edx,8
fffff801`46f5ca9b 8d4210          lea     eax,[rdx+10h]
fffff801`46f5ca9e eb24            jmp     nt!ExFreePoolWithTag+0xe44 (fffff801`46f5cac4)  Branch

nt!ExFreePoolWithTag+0xe20:
fffff801`46f5caa0 458bc7          mov     r8d,r15d
fffff801`46f5caa3 488bd7          mov     rdx,rdi
fffff801`46f5caa6 8bcb            mov     ecx,ebx
fffff801`46f5caa8 e8b335d0ff      call    nt!ExpRemovePoolTrackerExpansion (fffff801`46c60060)
fffff801`46f5caad 488bce          mov     rcx,rsi
fffff801`46f5cab0 e8f3fcf5ff      call    nt!MmFreeSpecialPool (fffff801`46ebc7a8)
fffff801`46f5cab5 e9bc0c0000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0xe3a:
fffff801`46f5caba ba20000000      mov     edx,20h
fffff801`46f5cabf b830000000      mov     eax,30h

nt!ExFreePoolWithTag+0xe44:
fffff801`46f5cac4 f048ff0401      lock inc qword ptr [rcx+rax]
fffff801`46f5cac9 f0480fc13c11    lock xadd qword ptr [rcx+rdx],rdi
fffff801`46f5cacf 488bce          mov     rcx,rsi
fffff801`46f5cad2 e8d1fcf5ff      call    nt!MmFreeSpecialPool (fffff801`46ebc7a8)
fffff801`46f5cad7 e99a0c0000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0xe5c:
fffff801`46f5cadc 41bf01000000    mov     r15d,1
fffff801`46f5cae2 48f7c6ff0f0000  test    rsi,0FFFh
fffff801`46f5cae9 7528            jne     nt!ExFreePoolWithTag+0xe93 (fffff801`46f5cb13)  Branch

nt!ExFreePoolWithTag+0xe6b:
fffff801`46f5caeb 488bce          mov     rcx,rsi
fffff801`46f5caee e891d8d5ff      call    nt!MiDeterminePoolType (fffff801`46cba384)
fffff801`46f5caf3 33ff            xor     edi,edi
fffff801`46f5caf5 488d542434      lea     rdx,[rsp+34h]
fffff801`46f5cafa 83f820          cmp     eax,20h
fffff801`46f5cafd 488bce          mov     rcx,rsi
fffff801`46f5cb00 0f45f8          cmovne  edi,eax
fffff801`46f5cb03 4533c0          xor     r8d,r8d
fffff801`46f5cb06 448bcf          mov     r9d,edi
fffff801`46f5cb09 e8525ccdff      call    nt!ExFreeLargePool (fffff801`46c32760)
fffff801`46f5cb0e e9630c0000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0xe93:
fffff801`46f5cb13 0fb746f2        movzx   eax,word ptr [rsi-0Eh]
fffff801`46f5cb17 488d5ef0        lea     rbx,[rsi-10h]
fffff801`46f5cb1b 0fb7d0          movzx   edx,ax
fffff801`46f5cb1e 440fb6f0        movzx   r14d,al
fffff801`46f5cb22 66c1ea08        shr     dx,8
fffff801`46f5cb26 4489b42448010000 mov     dword ptr [rsp+148h],r14d
fffff801`46f5cb2e f6c30f          test    bl,0Fh
fffff801`46f5cb31 0f85aa0a0000    jne     nt!ExFreePoolWithTag+0x1961 (fffff801`46f5d5e1)  Branch

nt!ExFreePoolWithTag+0xeb7:
fffff801`46f5cb37 488bc3          mov     rax,rbx
fffff801`46f5cb3a 418bce          mov     ecx,r14d
fffff801`46f5cb3d 48c1e104        shl     rcx,4
fffff801`46f5cb41 25ff0f0000      and     eax,0FFFh
fffff801`46f5cb46 4803c8          add     rcx,rax
fffff801`46f5cb49 418bfe          mov     edi,r14d
fffff801`46f5cb4c 4881f900100000  cmp     rcx,1000h
fffff801`46f5cb53 0f87880a0000    ja      nt!ExFreePoolWithTag+0x1961 (fffff801`46f5d5e1)  Branch

nt!ExFreePoolWithTag+0xed9:
fffff801`46f5cb59 440fb6e2        movzx   r12d,dl
fffff801`46f5cb5d 458bec          mov     r13d,r12d
fffff801`46f5cb60 4523ef          and     r13d,r15d
fffff801`46f5cb63 44896c2438      mov     dword ptr [rsp+38h],r13d
fffff801`46f5cb68 f6c202          test    dl,2
fffff801`46f5cb6b 0f84f80a0000    je      nt!ExFreePoolWithTag+0x19e9 (fffff801`46f5d669)  Branch

nt!ExFreePoolWithTag+0xef1:
fffff801`46f5cb71 8b0509781f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5cb77 48c1e704        shl     rdi,4
fffff801`46f5cb7b a907020000      test    eax,207h
fffff801`46f5cb80 7456            je      nt!ExFreePoolWithTag+0xf58 (fffff801`46f5cbd8)  Branch

nt!ExFreePoolWithTag+0xf02:
fffff801`46f5cb82 0fbae009        bt      eax,9
fffff801`46f5cb86 7310            jae     nt!ExFreePoolWithTag+0xf18 (fffff801`46f5cb98)  Branch

nt!ExFreePoolWithTag+0xf08:
fffff801`46f5cb88 4585ed          test    r13d,r13d
fffff801`46f5cb8b 750b            jne     nt!ExFreePoolWithTag+0xf18 (fffff801`46f5cb98)  Branch

nt!ExFreePoolWithTag+0xf0d:
fffff801`46f5cb8d 488bd7          mov     rdx,rdi
fffff801`46f5cb90 488bcb          mov     rcx,rbx
fffff801`46f5cb93 e89cf6fcff      call    nt!ExpCheckForLookaside (fffff801`46f2c234)

nt!ExFreePoolWithTag+0xf18:
fffff801`46f5cb98 8b05e2771f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5cb9e 4184c7          test    r15b,al
fffff801`46f5cba1 740b            je      nt!ExFreePoolWithTag+0xf2e (fffff801`46f5cbae)  Branch

nt!ExFreePoolWithTag+0xf23:
fffff801`46f5cba3 488bd7          mov     rdx,rdi
fffff801`46f5cba6 488bcb          mov     rcx,rbx
fffff801`46f5cba9 e8f2fbf3ff      call    nt!KeCheckForTimer (fffff801`46e9c7a0)

nt!ExFreePoolWithTag+0xf2e:
fffff801`46f5cbae 8b05cc771f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5cbb4 a804            test    al,4
fffff801`46f5cbb6 740b            je      nt!ExFreePoolWithTag+0xf43 (fffff801`46f5cbc3)  Branch

nt!ExFreePoolWithTag+0xf38:
fffff801`46f5cbb8 488bd7          mov     rdx,rdi
fffff801`46f5cbbb 488bcb          mov     rcx,rbx
fffff801`46f5cbbe e8d1e6fcff      call    nt!ExpCheckForResource (fffff801`46f2b294)

nt!ExFreePoolWithTag+0xf43:
fffff801`46f5cbc3 8b05b7771f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5cbc9 a802            test    al,2
fffff801`46f5cbcb 740b            je      nt!ExFreePoolWithTag+0xf58 (fffff801`46f5cbd8)  Branch

nt!ExFreePoolWithTag+0xf4d:
fffff801`46f5cbcd 488bd7          mov     rdx,rdi
fffff801`46f5cbd0 488bcb          mov     rcx,rbx
fffff801`46f5cbd3 e83cfbfcff      call    nt!ExpCheckForWorker (fffff801`46f2c714)

nt!ExFreePoolWithTag+0xf58:
fffff801`46f5cbd8 8b05a2771f00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff801`47154380)]
fffff801`46f5cbde a810            test    al,10h
fffff801`46f5cbe0 740b            je      nt!ExFreePoolWithTag+0xf6d (fffff801`46f5cbed)  Branch

nt!ExFreePoolWithTag+0xf62:
fffff801`46f5cbe2 488bd7          mov     rdx,rdi
fffff801`46f5cbe5 488bcb          mov     rcx,rbx
fffff801`46f5cbe8 e8afc25e00      call    nt!VfFreePoolNotification (fffff801`47548e9c)

nt!ExFreePoolWithTag+0xf6d:
fffff801`46f5cbed 41f6c440        test    r12b,40h
fffff801`46f5cbf1 7411            je      nt!ExFreePoolWithTag+0xf84 (fffff801`46f5cc04)  Branch

nt!ExFreePoolWithTag+0xf73:
fffff801`46f5cbf3 4533c9          xor     r9d,r9d
fffff801`46f5cbf6 458bc5          mov     r8d,r13d
fffff801`46f5cbf9 488bd7          mov     rdx,rdi
fffff801`46f5cbfc 488bce          mov     rcx,rsi
fffff801`46f5cbff e898cdf6ff      call    nt!VerifierFreeTrackedPool (fffff801`46ec999c)

nt!ExFreePoolWithTag+0xf84:
fffff801`46f5cc04 41f6c404        test    r12b,4
fffff801`46f5cc08 0f8494000000    je      nt!ExFreePoolWithTag+0x1022 (fffff801`46f5cca2)  Branch

nt!ExFreePoolWithTag+0xf8e:
fffff801`46f5cc0e 440fb70b        movzx   r9d,word ptr [rbx]
fffff801`46f5cc12 4c8bc3          mov     r8,rbx
fffff801`46f5cc15 410fb6c1        movzx   eax,r9b
fffff801`46f5cc19 48c1e004        shl     rax,4
fffff801`46f5cc1d 4c2bc0          sub     r8,rax
fffff801`46f5cc20 41f6400302      test    byte ptr [r8+3],2
fffff801`46f5cc25 0f845a0a0000    je      nt!ExFreePoolWithTag+0x1a05 (fffff801`46f5d685)  Branch

nt!ExFreePoolWithTag+0xfab:
fffff801`46f5cc2b 8b0587771f00    mov     eax,dword ptr [nt!ExpCacheLineSize (fffff801`471543b8)]
fffff801`46f5cc31 baf0ffffff      mov     edx,0FFFFFFF0h
fffff801`46f5cc36 412bd0          sub     edx,r8d
fffff801`46f5cc39 ffc8            dec     eax
fffff801`46f5cc3b 23d0            and     edx,eax
fffff801`46f5cc3d 0f848d0a0000    je      nt!ExFreePoolWithTag+0x1a50 (fffff801`46f5d6d0)  Branch

nt!ExFreePoolWithTag+0xfc3:
fffff801`46f5cc43 8bc2            mov     eax,edx
fffff801`46f5cc45 4903c0          add     rax,r8
fffff801`46f5cc48 483bc3          cmp     rax,rbx
fffff801`46f5cc4b 0f857f0a0000    jne     nt!ExFreePoolWithTag+0x1a50 (fffff801`46f5d6d0)  Branch

nt!ExFreePoolWithTag+0xfd1:
fffff801`46f5cc51 410fb74002      movzx   eax,word ptr [r8+2]
fffff801`46f5cc56 440fb6f0        movzx   r14d,al
fffff801`46f5cc5a 0fb74302        movzx   eax,word ptr [rbx+2]
fffff801`46f5cc5e 0fb6c8          movzx   ecx,al
fffff801`46f5cc61 410fb6c1        movzx   eax,r9b
fffff801`46f5cc65 03c8            add     ecx,eax
fffff801`46f5cc67 4489b42448010000 mov     dword ptr [rsp+148h],r14d
fffff801`46f5cc6f 443bf1          cmp     r14d,ecx
fffff801`46f5cc72 0f85580a0000    jne     nt!ExFreePoolWithTag+0x1a50 (fffff801`46f5d6d0)  Branch

nt!ExFreePoolWithTag+0xff8:
fffff801`46f5cc78 b8ff000000      mov     eax,0FFh
fffff801`46f5cc7d 664423c8        and     r9w,ax
fffff801`46f5cc81 66453bcf        cmp     r9w,r15w
fffff801`46f5cc85 7614            jbe     nt!ExFreePoolWithTag+0x101b (fffff801`46f5cc9b)  Branch

nt!ExFreePoolWithTag+0x1007:
fffff801`46f5cc87 488b0daa791f00  mov     rcx,qword ptr [nt!ExpPoolQuotaCookie (fffff801`47154638)]
fffff801`46f5cc8e 4833cb          xor     rcx,rbx
fffff801`46f5cc91 493b4810        cmp     rcx,qword ptr [r8+10h]
fffff801`46f5cc95 0f85020a0000    jne     nt!ExFreePoolWithTag+0x1a1d (fffff801`46f5d69d)  Branch

nt!ExFreePoolWithTag+0x101b:
fffff801`46f5cc9b 498bd8          mov     rbx,r8
fffff801`46f5cc9e 498d7010        lea     rsi,[r8+10h]

nt!ExFreePoolWithTag+0x1022:
fffff801`46f5cca2 804b0304        or      byte ptr [rbx+3],4
fffff801`46f5cca6 f0830c2400      lock or dword ptr [rsp],0
fffff801`46f5ccab 806303fd        and     byte ptr [rbx+3],0FDh
fffff801`46f5ccaf 8b4304          mov     eax,dword ptr [rbx+4]
fffff801`46f5ccb2 418bd6          mov     edx,r14d
fffff801`46f5ccb5 48c1e204        shl     rdx,4
fffff801`46f5ccb9 4803d3          add     rdx,rbx
fffff801`46f5ccbc 458bc6          mov     r8d,r14d
fffff801`46f5ccbf 89442434        mov     dword ptr [rsp+34h],eax
fffff801`46f5ccc3 4c89842440010000 mov     qword ptr [rsp+140h],r8
fffff801`46f5cccb 4889542468      mov     qword ptr [rsp+68h],rdx
fffff801`46f5ccd0 48f7c2ff0f0000  test    rdx,0FFFh
fffff801`46f5ccd7 740f            je      nt!ExFreePoolWithTag+0x1068 (fffff801`46f5cce8)  Branch

nt!ExFreePoolWithTag+0x1059:
fffff801`46f5ccd9 0fb702          movzx   eax,word ptr [rdx]
fffff801`46f5ccdc 0fb6c8          movzx   ecx,al
fffff801`46f5ccdf 443bf1          cmp     r14d,ecx
fffff801`46f5cce2 0f85cd090000    jne     nt!ExFreePoolWithTag+0x1a35 (fffff801`46f5d6b5)  Branch

nt!ExFreePoolWithTag+0x1068:
fffff801`46f5cce8 440fb65301      movzx   r10d,byte ptr [rbx+1]
fffff801`46f5cced 4c8d0d0c43cbff  lea     r9,[nt!MmFreeIndependentPages <PERF> (nt+0x0) (fffff801`46c11000)]
fffff801`46f5ccf4 4f8bb4e9a8365400 mov     r14,qword ptr [r9+r13*8+5436A8h]
fffff801`46f5ccfc 4585ed          test    r13d,r13d
fffff801`46f5ccff 0f8568010000    jne     nt!ExFreePoolWithTag+0x11ed (fffff801`46f5ce6d)  Branch

nt!ExFreePoolWithTag+0x1085:
fffff801`46f5cd05 8b0521631f00    mov     eax,dword ptr [nt!ExpNumberOfNonPagedPools (fffff801`4715302c)]
fffff801`46f5cd0b 413bc7          cmp     eax,r15d
fffff801`46f5cd0e 760b            jbe     nt!ExFreePoolWithTag+0x109b (fffff801`46f5cd1b)  Branch

nt!ExFreePoolWithTag+0x1090:
fffff801`46f5cd10 4f8bb4d1504b5400 mov     r14,qword ptr [r9+r10*8+544B50h]
fffff801`46f5cd18 448bf8          mov     r15d,eax

nt!ExFreePoolWithTag+0x109b:
fffff801`46f5cd1b 4c8bc3          mov     r8,rbx
fffff801`46f5cd1e 49c1e812        shr     r8,12h
fffff801`46f5cd22 4181e0f8ffff3f  and     r8d,3FFFFFF8h
fffff801`46f5cd29 48b900000040ebd6ffff mov rcx,0FFFFD6EB40000000h
fffff801`46f5cd33 4c03c1          add     r8,rcx
fffff801`46f5cd36 48bf00d0ba75ebd6ffff mov rdi,0FFFFD6EB75BAD000h
fffff801`46f5cd40 498b10          mov     rdx,qword ptr [r8]
fffff801`46f5cd43 488bc7          mov     rax,rdi
fffff801`46f5cd46 49bbf8d7ba75ebd6ffff mov r11,0FFFFD6EB75BAD7F8h
fffff801`46f5cd50 4c3bc0          cmp     r8,rax
fffff801`46f5cd53 7267            jb      nt!ExFreePoolWithTag+0x113c (fffff801`46f5cdbc)  Branch

nt!ExFreePoolWithTag+0x10d5:
fffff801`46f5cd55 498bc3          mov     rax,r11
fffff801`46f5cd58 4c3bc0          cmp     r8,rax
fffff801`46f5cd5b 775f            ja      nt!ExFreePoolWithTag+0x113c (fffff801`46f5cdbc)  Branch

nt!ExFreePoolWithTag+0x10dd:
fffff801`46f5cd5d e89ed6d2ff      call    nt!MiPteHasShadow (fffff801`46c8a400)
fffff801`46f5cd62 85c0            test    eax,eax
fffff801`46f5cd64 7456            je      nt!ExFreePoolWithTag+0x113c (fffff801`46f5cdbc)  Branch

nt!ExFreePoolWithTag+0x10e6:
fffff801`46f5cd66 f6c201          test    dl,1
fffff801`46f5cd69 7451            je      nt!ExFreePoolWithTag+0x113c (fffff801`46f5cdbc)  Branch

nt!ExFreePoolWithTag+0x10eb:
fffff801`46f5cd6b f6c220          test    dl,20h
fffff801`46f5cd6e 7405            je      nt!ExFreePoolWithTag+0x10f5 (fffff801`46f5cd75)  Branch

nt!ExFreePoolWithTag+0x10f0:
fffff801`46f5cd70 f6c242          test    dl,42h
fffff801`46f5cd73 7547            jne     nt!ExFreePoolWithTag+0x113c (fffff801`46f5cdbc)  Branch

nt!ExFreePoolWithTag+0x10f5:
fffff801`46f5cd75 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff801`46f5cd7e 488b88b8000000  mov     rcx,qword ptr [rax+0B8h]
fffff801`46f5cd85 488b8108060000  mov     rax,qword ptr [rcx+608h]
fffff801`46f5cd8c 4885c0          test    rax,rax
fffff801`46f5cd8f 742b            je      nt!ExFreePoolWithTag+0x113c (fffff801`46f5cdbc)  Branch

nt!ExFreePoolWithTag+0x1111:
fffff801`46f5cd91 49c1e803        shr     r8,3
fffff801`46f5cd95 4181e0ff010000  and     r8d,1FFh
fffff801`46f5cd9c 4a8b04c0        mov     rax,qword ptr [rax+r8*8]
fffff801`46f5cda0 4c8bc2          mov     r8,rdx
fffff801`46f5cda3 4983c820        or      r8,20h
fffff801`46f5cda7 0fb6c8          movzx   ecx,al
fffff801`46f5cdaa 80e120          and     cl,20h
fffff801`46f5cdad 4c0f44c2        cmove   r8,rdx
fffff801`46f5cdb1 498bd0          mov     rdx,r8
fffff801`46f5cdb4 a842            test    al,42h
fffff801`46f5cdb6 7404            je      nt!ExFreePoolWithTag+0x113c (fffff801`46f5cdbc)  Branch

nt!ExFreePoolWithTag+0x1138:
fffff801`46f5cdb8 4883ca42        or      rdx,42h

nt!ExFreePoolWithTag+0x113c:
fffff801`46f5cdbc 84d2            test    dl,dl
fffff801`46f5cdbe 0f8893000000    js      nt!ExFreePoolWithTag+0x11d7 (fffff801`46f5ce57)  Branch

nt!ExFreePoolWithTag+0x1144:
fffff801`46f5cdc4 4c8bc3          mov     r8,rbx
fffff801`46f5cdc7 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff801`46f5cdd1 49c1e809        shr     r8,9
fffff801`46f5cdd5 4c23c1          and     r8,rcx
fffff801`46f5cdd8 48b90000000080d6ffff mov rcx,0FFFFD68000000000h
fffff801`46f5cde2 4c03c1          add     r8,rcx
fffff801`46f5cde5 498b10          mov     rdx,qword ptr [r8]
fffff801`46f5cde8 488bc7          mov     rax,rdi
fffff801`46f5cdeb 4c3bc0          cmp     r8,rax
fffff801`46f5cdee 7267            jb      nt!ExFreePoolWithTag+0x11d7 (fffff801`46f5ce57)  Branch

nt!ExFreePoolWithTag+0x1170:
fffff801`46f5cdf0 498bc3          mov     rax,r11
fffff801`46f5cdf3 4c3bc0          cmp     r8,rax
fffff801`46f5cdf6 775f            ja      nt!ExFreePoolWithTag+0x11d7 (fffff801`46f5ce57)  Branch

nt!ExFreePoolWithTag+0x1178:
fffff801`46f5cdf8 e803d6d2ff      call    nt!MiPteHasShadow (fffff801`46c8a400)
fffff801`46f5cdfd 85c0            test    eax,eax
fffff801`46f5cdff 7456            je      nt!ExFreePoolWithTag+0x11d7 (fffff801`46f5ce57)  Branch

nt!ExFreePoolWithTag+0x1181:
fffff801`46f5ce01 f6c201          test    dl,1
fffff801`46f5ce04 7451            je      nt!ExFreePoolWithTag+0x11d7 (fffff801`46f5ce57)  Branch

nt!ExFreePoolWithTag+0x1186:
fffff801`46f5ce06 f6c220          test    dl,20h
fffff801`46f5ce09 7405            je      nt!ExFreePoolWithTag+0x1190 (fffff801`46f5ce10)  Branch

nt!ExFreePoolWithTag+0x118b:
fffff801`46f5ce0b f6c242          test    dl,42h
fffff801`46f5ce0e 7547            jne     nt!ExFreePoolWithTag+0x11d7 (fffff801`46f5ce57)  Branch

nt!ExFreePoolWithTag+0x1190:
fffff801`46f5ce10 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff801`46f5ce19 488b88b8000000  mov     rcx,qword ptr [rax+0B8h]
fffff801`46f5ce20 488b8108060000  mov     rax,qword ptr [rcx+608h]
fffff801`46f5ce27 4885c0          test    rax,rax
fffff801`46f5ce2a 742b            je      nt!ExFreePoolWithTag+0x11d7 (fffff801`46f5ce57)  Branch

nt!ExFreePoolWithTag+0x11ac:
fffff801`46f5ce2c 49c1e803        shr     r8,3
fffff801`46f5ce30 4181e0ff010000  and     r8d,1FFh
fffff801`46f5ce37 4a8b04c0        mov     rax,qword ptr [rax+r8*8]
fffff801`46f5ce3b 4c8bc2          mov     r8,rdx
fffff801`46f5ce3e 4983c820        or      r8,20h
fffff801`46f5ce42 0fb6c8          movzx   ecx,al
fffff801`46f5ce45 80e120          and     cl,20h
fffff801`46f5ce48 4c0f44c2        cmove   r8,rdx
fffff801`46f5ce4c 498bd0          mov     rdx,r8
fffff801`46f5ce4f a842            test    al,42h
fffff801`46f5ce51 7404            je      nt!ExFreePoolWithTag+0x11d7 (fffff801`46f5ce57)  Branch

nt!ExFreePoolWithTag+0x11d3:
fffff801`46f5ce53 4883ca42        or      rdx,42h

nt!ExFreePoolWithTag+0x11d7:
fffff801`46f5ce57 4c8b842440010000 mov     r8,qword ptr [rsp+140h]
fffff801`46f5ce5f 4885d2          test    rdx,rdx
fffff801`46f5ce62 782b            js      nt!ExFreePoolWithTag+0x120f (fffff801`46f5ce8f)  Branch

nt!ExFreePoolWithTag+0x11e4:
fffff801`46f5ce64 4981c640110000  add     r14,1140h
fffff801`46f5ce6b eb22            jmp     nt!ExFreePoolWithTag+0x120f (fffff801`46f5ce8f)  Branch

nt!ExFreePoolWithTag+0x11ed:
fffff801`46f5ce6d 41f6c420        test    r12b,20h
fffff801`46f5ce71 740a            je      nt!ExFreePoolWithTag+0x11fd (fffff801`46f5ce7d)  Branch

nt!ExFreePoolWithTag+0x11f3:
fffff801`46f5ce73 e858d83900      call    nt!MiSessionPoolVector (fffff801`472fa6d0)
fffff801`46f5ce78 4c8bf0          mov     r14,rax
fffff801`46f5ce7b eb12            jmp     nt!ExFreePoolWithTag+0x120f (fffff801`46f5ce8f)  Branch

nt!ExFreePoolWithTag+0x11fd:
fffff801`46f5ce7d 448b3da4611f00  mov     r15d,dword ptr [nt!ExpNumberOfPagedPools (fffff801`47153028)]
fffff801`46f5ce84 4f8bb4d180475400 mov     r14,qword ptr [r9+r10*8+544780h]
fffff801`46f5ce8c 41ffc7          inc     r15d

nt!ExFreePoolWithTag+0x120f:
fffff801`46f5ce8f 453bd7          cmp     r10d,r15d
fffff801`46f5ce92 0f8355080000    jae     nt!ExFreePoolWithTag+0x1a6d (fffff801`46f5d6ed)  Branch

nt!ExFreePoolWithTag+0x1218:
fffff801`46f5ce98 8b056a621f00    mov     eax,dword ptr [nt!PoolHitTag (fffff801`47153108)]
fffff801`46f5ce9e 498bd0          mov     rdx,r8
fffff801`46f5cea1 8b7c2434        mov     edi,dword ptr [rsp+34h]
fffff801`46f5cea5 48c1e204        shl     rdx,4
fffff801`46f5cea9 4889542440      mov     qword ptr [rsp+40h],rdx
fffff801`46f5ceae 39442434        cmp     dword ptr [rsp+34h],eax
fffff801`46f5ceb2 7501            jne     nt!ExFreePoolWithTag+0x1235 (fffff801`46f5ceb5)  Branch

nt!ExFreePoolWithTag+0x1234:
fffff801`46f5ceb4 cc              int     3

nt!ExFreePoolWithTag+0x1235:
fffff801`46f5ceb5 8b0589741f00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff801`47154344)]
fffff801`46f5cebb a841            test    al,41h
fffff801`46f5cebd 741f            je      nt!ExFreePoolWithTag+0x125e (fffff801`46f5cede)  Branch

nt!ExFreePoolWithTag+0x123f:
fffff801`46f5cebf 4889542420      mov     qword ptr [rsp+20h],rdx
fffff801`46f5cec4 b9220e0000      mov     ecx,0E22h
fffff801`46f5cec9 418bd4          mov     edx,r12d
fffff801`46f5cecc 4c8bce          mov     r9,rsi
fffff801`46f5cecf 448bc7          mov     r8d,edi
fffff801`46f5ced2 e8612ee6ff      call    nt!EtwTracePool (fffff801`46dbfd38)
fffff801`46f5ced7 4c8d0d2241cbff  lea     r9,[nt!MmFreeIndependentPages <PERF> (nt+0x0) (fffff801`46c11000)]

nt!ExFreePoolWithTag+0x125e:
fffff801`46f5cede 458bfc          mov     r15d,r12d
fffff801`46f5cee1 4183e720        and     r15d,20h
fffff801`46f5cee5 44897c2430      mov     dword ptr [rsp+30h],r15d
fffff801`46f5ceea 7519            jne     nt!ExFreePoolWithTag+0x1285 (fffff801`46f5cf05)  Branch

nt!ExFreePoolWithTag+0x126c:
fffff801`46f5ceec 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff801`46f5cef4 4d8b94c100804000 mov     r10,qword ptr [r9+rax*8+408000h]
fffff801`46f5cefc 4c8b0d2de90b00  mov     r9,qword ptr [nt!PoolTrackTableMask (fffff801`4701b830)]
fffff801`46f5cf03 eb0e            jmp     nt!ExFreePoolWithTag+0x1293 (fffff801`46f5cf13)  Branch

nt!ExFreePoolWithTag+0x1285:
fffff801`46f5cf05 4c8b15fce80b00  mov     r10,qword ptr [nt!ExpSessionPoolTrackTable (fffff801`4701b808)]
fffff801`46f5cf0c 4c8b0dede80b00  mov     r9,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff801`4701b800)]

nt!ExFreePoolWithTag+0x1293:
fffff801`46f5cf13 4869cf5f9e0000  imul    rcx,rdi,9E5Fh
fffff801`46f5cf1a 488bd1          mov     rdx,rcx
fffff801`46f5cf1d 48c1ea20        shr     rdx,20h
fffff801`46f5cf21 33d1            xor     edx,ecx
fffff801`46f5cf23 4123d1          and     edx,r9d
fffff801`46f5cf26 8bc2            mov     eax,edx
fffff801`46f5cf28 448bda          mov     r11d,edx
fffff801`46f5cf2b 4c6bc038        imul    r8,rax,38h
fffff801`46f5cf2f 438b0410        mov     eax,dword ptr [r8+r10]
fffff801`46f5cf33 4b8d0c10        lea     rcx,[r8+r10]
fffff801`46f5cf37 3bc7            cmp     eax,edi
fffff801`46f5cf39 7442            je      nt!ExFreePoolWithTag+0x12fd (fffff801`46f5cf7d)  Branch

nt!ExFreePoolWithTag+0x12bb:
fffff801`46f5cf3b 0f1f440000      nop     dword ptr [rax+rax]

nt!ExFreePoolWithTag+0x12c0:
fffff801`46f5cf40 85c0            test    eax,eax
fffff801`46f5cf42 751a            jne     nt!ExFreePoolWithTag+0x12de (fffff801`46f5cf5e)  Branch

nt!ExFreePoolWithTag+0x12c4:
fffff801`46f5cf44 4585ff          test    r15d,r15d
fffff801`46f5cf47 7515            jne     nt!ExFreePoolWithTag+0x12de (fffff801`46f5cf5e)  Branch

nt!ExFreePoolWithTag+0x12c9:
fffff801`46f5cf49 488b0588c00b00  mov     rax,qword ptr [nt!PoolTrackTable (fffff801`47018fd8)]
fffff801`46f5cf50 468b0400        mov     r8d,dword ptr [rax+r8]
fffff801`46f5cf54 4585c0          test    r8d,r8d
fffff801`46f5cf57 7405            je      nt!ExFreePoolWithTag+0x12de (fffff801`46f5cf5e)  Branch

nt!ExFreePoolWithTag+0x12d9:
fffff801`46f5cf59 448901          mov     dword ptr [rcx],r8d
fffff801`46f5cf5c eb0d            jmp     nt!ExFreePoolWithTag+0x12eb (fffff801`46f5cf6b)  Branch

nt!ExFreePoolWithTag+0x12de:
fffff801`46f5cf5e 8d4201          lea     eax,[rdx+1]
fffff801`46f5cf61 4123c1          and     eax,r9d
fffff801`46f5cf64 8bd0            mov     edx,eax
fffff801`46f5cf66 413bc3          cmp     eax,r11d
fffff801`46f5cf69 7428            je      nt!ExFreePoolWithTag+0x1313 (fffff801`46f5cf93)  Branch

nt!ExFreePoolWithTag+0x12eb:
fffff801`46f5cf6b 8bc2            mov     eax,edx
fffff801`46f5cf6d 4c6bc038        imul    r8,rax,38h
fffff801`46f5cf71 438b0410        mov     eax,dword ptr [r8+r10]
fffff801`46f5cf75 4b8d0c10        lea     rcx,[r8+r10]
fffff801`46f5cf79 3bc7            cmp     eax,edi
fffff801`46f5cf7b 75c3            jne     nt!ExFreePoolWithTag+0x12c0 (fffff801`46f5cf40)  Branch

nt!ExFreePoolWithTag+0x12fd:
fffff801`46f5cf7d 4c8b442440      mov     r8,qword ptr [rsp+40h]
fffff801`46f5cf82 49f7d8          neg     r8
fffff801`46f5cf85 4585ed          test    r13d,r13d
fffff801`46f5cf88 751a            jne     nt!ExFreePoolWithTag+0x1324 (fffff801`46f5cfa4)  Branch

nt!ExFreePoolWithTag+0x130a:
fffff801`46f5cf8a 418d5508        lea     edx,[r13+8]
fffff801`46f5cf8e 8d4210          lea     eax,[rdx+10h]
fffff801`46f5cf91 eb1b            jmp     nt!ExFreePoolWithTag+0x132e (fffff801`46f5cfae)  Branch

nt!ExFreePoolWithTag+0x1313:
fffff801`46f5cf93 488b542440      mov     rdx,qword ptr [rsp+40h]
fffff801`46f5cf98 458bc4          mov     r8d,r12d
fffff801`46f5cf9b 8bcf            mov     ecx,edi
fffff801`46f5cf9d e8be30d0ff      call    nt!ExpRemovePoolTrackerExpansion (fffff801`46c60060)
fffff801`46f5cfa2 eb15            jmp     nt!ExFreePoolWithTag+0x1339 (fffff801`46f5cfb9)  Branch

nt!ExFreePoolWithTag+0x1324:
fffff801`46f5cfa4 ba20000000      mov     edx,20h
fffff801`46f5cfa9 b830000000      mov     eax,30h

nt!ExFreePoolWithTag+0x132e:
fffff801`46f5cfae f048ff0401      lock inc qword ptr [rcx+rax]
fffff801`46f5cfb3 f04c0fc1040a    lock xadd qword ptr [rdx+rcx],r8

nt!ExFreePoolWithTag+0x1339:
fffff801`46f5cfb9 33ff            xor     edi,edi
fffff801`46f5cfbb 41f6c408        test    r12b,8
fffff801`46f5cfbf 0f84ac010000    je      nt!ExFreePoolWithTag+0x14f1 (fffff801`46f5d171)  Branch

nt!ExFreePoolWithTag+0x1345:
fffff801`46f5cfc5 0fb64b03        movzx   ecx,byte ptr [rbx+3]
fffff801`46f5cfc9 f6c108          test    cl,8
fffff801`46f5cfcc 0f849f010000    je      nt!ExFreePoolWithTag+0x14f1 (fffff801`46f5d171)  Branch

nt!ExFreePoolWithTag+0x1352:
fffff801`46f5cfd2 4c8b6308        mov     r12,qword ptr [rbx+8]
fffff801`46f5cfd6 4c33255b761f00  xor     r12,qword ptr [nt!ExpPoolQuotaCookie (fffff801`47154638)]
fffff801`46f5cfdd 4c33e3          xor     r12,rbx
fffff801`46f5cfe0 0f848b010000    je      nt!ExFreePoolWithTag+0x14f1 (fffff801`46f5d171)  Branch

nt!ExFreePoolWithTag+0x1366:
fffff801`46f5cfe6 48b8000000000080ffff mov rax,0FFFF800000000000h
fffff801`46f5cff0 4c3be0          cmp     r12,rax
fffff801`46f5cff3 0f8228070000    jb      nt!ExFreePoolWithTag+0x1aa1 (fffff801`46f5d721)  Branch

nt!ExFreePoolWithTag+0x1379:
fffff801`46f5cff9 410fb60424      movzx   eax,byte ptr [r12]
fffff801`46f5cffe 247f            and     al,7Fh
fffff801`46f5d000 3c03            cmp     al,3
fffff801`46f5d002 0f8519070000    jne     nt!ExFreePoolWithTag+0x1aa1 (fffff801`46f5d721)  Branch

nt!ExFreePoolWithTag+0x1388:
fffff801`46f5d008 0fb74302        movzx   eax,word ptr [rbx+2]
fffff801`46f5d00c 440fb6d8        movzx   r11d,al
fffff801`46f5d010 49c1e304        shl     r11,4
fffff801`46f5d014 4c3b25c5721f00  cmp     r12,qword ptr [nt!PsInitialSystemProcess (fffff801`471542e0)]
fffff801`46f5d01b 4c895c2458      mov     qword ptr [rsp+58h],r11
fffff801`46f5d020 0fb6c1          movzx   eax,cl
fffff801`46f5d023 0f843d010000    je      nt!ExFreePoolWithTag+0x14e6 (fffff801`46f5d166)  Branch

nt!ExFreePoolWithTag+0x13a9:
fffff801`46f5d029 83e001          and     eax,1
fffff801`46f5d02c 488d15cd3fcbff  lea     rdx,[nt!MmFreeIndependentPages <PERF> (nt+0x0) (fffff801`46c11000)]
fffff801`46f5d033 448bd0          mov     r10d,eax
fffff801`46f5d036 498b842410040000 mov     rax,qword ptr [r12+410h]
fffff801`46f5d03e 4c89542450      mov     qword ptr [rsp+50h],r10
fffff801`46f5d043 4889442448      mov     qword ptr [rsp+48h],rax
fffff801`46f5d048 420fb68cd260395400 movzx ecx,byte ptr [rdx+r10*8+543960h]
fffff801`46f5d051 888c2440010000  mov     byte ptr [rsp+140h],cl
fffff801`46f5d058 418bca          mov     ecx,r10d
fffff801`46f5d05b 48c1e107        shl     rcx,7
fffff801`46f5d05f 48898c2490000000 mov     qword ptr [rsp+90h],rcx
fffff801`46f5d067 4c8d3c01        lea     r15,[rcx+rax]
fffff801`46f5d06b 410f0d0f        prefetchw [r15]
fffff801`46f5d06f 4d8b2f          mov     r13,qword ptr [r15]
fffff801`46f5d072 498b4740        mov     rax,qword ptr [r15+40h]
fffff801`46f5d076 49397f50        cmp     qword ptr [r15+50h],rdi
fffff801`46f5d07a 7469            je      nt!ExFreePoolWithTag+0x1465 (fffff801`46f5d0e5)  Branch

nt!ExFreePoolWithTag+0x13fc:
fffff801`46f5d07c 496bca38        imul    rcx,r10,38h
fffff801`46f5d080 493bc5          cmp     rax,r13
fffff801`46f5d083 7660            jbe     nt!ExFreePoolWithTag+0x1465 (fffff801`46f5d0e5)  Branch

nt!ExFreePoolWithTag+0x1405:
fffff801`46f5d085 4c8d8a48f54000  lea     r9,[rdx+40F548h]
fffff801`46f5d08c 4c03c9          add     r9,rcx
fffff801`46f5d08f 488bc8          mov     rcx,rax
fffff801`46f5d092 492bcd          sub     rcx,r13
fffff801`46f5d095 4d8b01          mov     r8,qword ptr [r9]
fffff801`46f5d098 493bc8          cmp     rcx,r8
fffff801`46f5d09b 7648            jbe     nt!ExFreePoolWithTag+0x1465 (fffff801`46f5d0e5)  Branch

nt!ExFreePoolWithTag+0x141d:
fffff801`46f5d09d 4d3bc3          cmp     r8,r11
fffff801`46f5d0a0 498bd3          mov     rdx,r11
fffff801`46f5d0a3 488bc8          mov     rcx,rax
fffff801`46f5d0a6 490f46d0        cmovbe  rdx,r8
fffff801`46f5d0aa 482bca          sub     rcx,rdx
fffff801`46f5d0ad f0490fb14f40    lock cmpxchg qword ptr [r15+40h],rcx
fffff801`46f5d0b3 7530            jne     nt!ExFreePoolWithTag+0x1465 (fffff801`46f5d0e5)  Branch

nt!ExFreePoolWithTag+0x1435:
fffff801`46f5d0b5 488bc2          mov     rax,rdx
fffff801`46f5d0b8 f0490fc14748    lock xadd qword ptr [r15+48h],rax
fffff801`46f5d0be 4803c2          add     rax,rdx
fffff801`46f5d0c1 493b01          cmp     rax,qword ptr [r9]
fffff801`46f5d0c4 761f            jbe     nt!ExFreePoolWithTag+0x1465 (fffff801`46f5d0e5)  Branch

nt!ExFreePoolWithTag+0x1446:
fffff801`46f5d0c6 448bc7          mov     r8d,edi
fffff801`46f5d0c9 4d874748        xchg    r8,qword ptr [r15+48h]
fffff801`46f5d0cd 4d85c0          test    r8,r8
fffff801`46f5d0d0 7413            je      nt!ExFreePoolWithTag+0x1465 (fffff801`46f5d0e5)  Branch

nt!ExFreePoolWithTag+0x1452:
fffff801`46f5d0d2 4533c9          xor     r9d,r9d
fffff801`46f5d0d5 498bd7          mov     rdx,r15
fffff801`46f5d0d8 418bca          mov     ecx,r10d
fffff801`46f5d0db e82c51d3ff      call    nt!PspReturnResourceQuota (fffff801`46c9220c)
fffff801`46f5d0e0 4c8b5c2458      mov     r11,qword ptr [rsp+58h]

nt!ExFreePoolWithTag+0x1465:
fffff801`46f5d0e5 4d8bcb          mov     r9,r11
fffff801`46f5d0e8 4c8d0551450f00  lea     r8,[nt!PspSystemQuotaBlock (fffff801`47051640)]
fffff801`46f5d0ef 90              nop

nt!ExFreePoolWithTag+0x1470:
fffff801`46f5d0f0 4d3bcd          cmp     r9,r13
fffff801`46f5d0f3 4d8bd5          mov     r10,r13
fffff801`46f5d0f6 498bcd          mov     rcx,r13
fffff801`46f5d0f9 488bd7          mov     rdx,rdi
fffff801`46f5d0fc 4d0f42d1        cmovb   r10,r9
fffff801`46f5d100 498bc5          mov     rax,r13
fffff801`46f5d103 492bc9          sub     rcx,r9
fffff801`46f5d106 4d3bcd          cmp     r9,r13
fffff801`46f5d109 480f42d1        cmovb   rdx,rcx
fffff801`46f5d10d f0490fb117      lock cmpxchg qword ptr [r15],rdx
fffff801`46f5d112 4c8be8          mov     r13,rax
fffff801`46f5d115 75d9            jne     nt!ExFreePoolWithTag+0x1470 (fffff801`46f5d0f0)  Branch

nt!ExFreePoolWithTag+0x1497:
fffff801`46f5d117 4d2bca          sub     r9,r10
fffff801`46f5d11a 7424            je      nt!ExFreePoolWithTag+0x14c0 (fffff801`46f5d140)  Branch

nt!ExFreePoolWithTag+0x149c:
fffff801`46f5d11c 4c39442448      cmp     qword ptr [rsp+48h],r8
fffff801`46f5d121 0f84df050000    je      nt!ExFreePoolWithTag+0x1a86 (fffff801`46f5d706)  Branch

nt!ExFreePoolWithTag+0x14a7:
fffff801`46f5d127 4c8bbc2490000000 mov     r15,qword ptr [rsp+90h]
fffff801`46f5d12f 4d03f8          add     r15,r8
fffff801`46f5d132 4c89442448      mov     qword ptr [rsp+48h],r8
fffff801`46f5d137 410f0d0f        prefetchw [r15]
fffff801`46f5d13b 4d8b2f          mov     r13,qword ptr [r15]
fffff801`46f5d13e ebb0            jmp     nt!ExFreePoolWithTag+0x1470 (fffff801`46f5d0f0)  Branch

nt!ExFreePoolWithTag+0x14c0:
fffff801`46f5d140 f684244001000004 test    byte ptr [rsp+140h],4
fffff801`46f5d148 448b7c2430      mov     r15d,dword ptr [rsp+30h]
fffff801`46f5d14d 448b6c2438      mov     r13d,dword ptr [rsp+38h]
fffff801`46f5d152 7412            je      nt!ExFreePoolWithTag+0x14e6 (fffff801`46f5d166)  Branch

nt!ExFreePoolWithTag+0x14d4:
fffff801`46f5d154 49f7db          neg     r11
fffff801`46f5d157 488b442450      mov     rax,qword ptr [rsp+50h]
fffff801`46f5d15c f04d0fc19cc410030000 lock xadd qword ptr [r12+rax*8+310h],r11

nt!ExFreePoolWithTag+0x14e6:
fffff801`46f5d166 8b5304          mov     edx,dword ptr [rbx+4]
fffff801`46f5d169 498bcc          mov     rcx,r12
fffff801`46f5d16c e83f3ed7ff      call    nt!ObDereferenceObjectDeferDeleteWithTag (fffff801`46cd0fb0)

nt!ExFreePoolWithTag+0x14f1:
fffff801`46f5d171 4585ff          test    r15d,r15d
fffff801`46f5d174 7431            je      nt!ExFreePoolWithTag+0x1527 (fffff801`46f5d1a7)  Branch

nt!ExFreePoolWithTag+0x14f6:
fffff801`46f5d176 4585ed          test    r13d,r13d
fffff801`46f5d179 742c            je      nt!ExFreePoolWithTag+0x1527 (fffff801`46f5d1a7)  Branch

nt!ExFreePoolWithTag+0x14fb:
fffff801`46f5d17b 448b942448010000 mov     r10d,dword ptr [rsp+148h]
fffff801`46f5d183 443b15d2731f00  cmp     r10d,dword ptr [nt!ExpSessionPoolSmallLists (fffff801`4715455c)]
fffff801`46f5d18a 0f870c010000    ja      nt!ExFreePoolWithTag+0x161c (fffff801`46f5d29c)  Branch

nt!ExFreePoolWithTag+0x1510:
fffff801`46f5d190 488b0521761f00  mov     rax,qword ptr [nt!ExpSessionPoolLookaside (fffff801`471547b8)]
fffff801`46f5d197 418bca          mov     ecx,r10d
fffff801`46f5d19a 48c1e107        shl     rcx,7
fffff801`46f5d19e 4883c080        add     rax,0FFFFFFFFFFFFFF80h
fffff801`46f5d1a2 e9c3000000      jmp     nt!ExFreePoolWithTag+0x15ea (fffff801`46f5d26a)  Branch

nt!ExFreePoolWithTag+0x1527:
fffff801`46f5d1a7 448b942448010000 mov     r10d,dword ptr [rsp+148h]
fffff801`46f5d1af 4183fa20        cmp     r10d,20h
fffff801`46f5d1b3 0f87e3000000    ja      nt!ExFreePoolWithTag+0x161c (fffff801`46f5d29c)  Branch

nt!ExFreePoolWithTag+0x1539:
fffff801`46f5d1b9 654c8b042520000000 mov   r8,qword ptr gs:[20h]
fffff801`46f5d1c2 4585ed          test    r13d,r13d
fffff801`46f5d1c5 7452            je      nt!ExFreePoolWithTag+0x1599 (fffff801`46f5d219)  Branch

nt!ExFreePoolWithTag+0x1547:
fffff801`46f5d1c7 458b8ec0000000  mov     r9d,dword ptr [r14+0C0h]
fffff801`46f5d1ce 4585c9          test    r9d,r9d
fffff801`46f5d1d1 0f84c5000000    je      nt!ExFreePoolWithTag+0x161c (fffff801`46f5d29c)  Branch

nt!ExFreePoolWithTag+0x1557:
fffff801`46f5d1d7 66833d215e1f0001 cmp     word ptr [nt!KeNumberNodes (fffff801`47153000)],1
fffff801`46f5d1df 7623            jbe     nt!ExFreePoolWithTag+0x1584 (fffff801`46f5d204)  Branch

nt!ExFreePoolWithTag+0x1561:
fffff801`46f5d1e1 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff801`46f5d1ea 488b88c0000000  mov     rcx,qword ptr [rax+0C0h]
fffff801`46f5d1f1 418d41ff        lea     eax,[r9-1]
fffff801`46f5d1f5 0fb79192000000  movzx   edx,word ptr [rcx+92h]
fffff801`46f5d1fc 3bd0            cmp     edx,eax
fffff801`46f5d1fe 0f8598000000    jne     nt!ExFreePoolWithTag+0x161c (fffff801`46f5d29c)  Branch

nt!ExFreePoolWithTag+0x1584:
fffff801`46f5d204 418d4aff        lea     ecx,[r10-1]
fffff801`46f5d208 488d4958        lea     rcx,[rcx+58h]
fffff801`46f5d20c 488d0c49        lea     rcx,[rcx+rcx*2]
fffff801`46f5d210 48c1e105        shl     rcx,5
fffff801`46f5d214 4903c8          add     rcx,r8
fffff801`46f5d217 eb54            jmp     nt!ExFreePoolWithTag+0x15ed (fffff801`46f5d26d)  Branch

nt!ExFreePoolWithTag+0x1599:
fffff801`46f5d219 66833ddf5d1f0001 cmp     word ptr [nt!KeNumberNodes (fffff801`47153000)],1
fffff801`46f5d221 7620            jbe     nt!ExFreePoolWithTag+0x15c3 (fffff801`46f5d243)  Branch

nt!ExFreePoolWithTag+0x15a3:
fffff801`46f5d223 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff801`46f5d22c 488b88c0000000  mov     rcx,qword ptr [rax+0C0h]
fffff801`46f5d233 0fb78192000000  movzx   eax,word ptr [rcx+92h]
fffff801`46f5d23a 413b86c0000000  cmp     eax,dword ptr [r14+0C0h]
fffff801`46f5d241 7559            jne     nt!ExFreePoolWithTag+0x161c (fffff801`46f5d29c)  Branch

nt!ExFreePoolWithTag+0x15c3:
fffff801`46f5d243 418d42ff        lea     eax,[r10-1]
fffff801`46f5d247 488d0440        lea     rax,[rax+rax*2]
fffff801`46f5d24b 48c1e005        shl     rax,5
fffff801`46f5d24f 498d8800090000  lea     rcx,[r8+900h]
fffff801`46f5d256 4181bec400000000020000 cmp dword ptr [r14+0C4h],200h
fffff801`46f5d261 7407            je      nt!ExFreePoolWithTag+0x15ea (fffff801`46f5d26a)  Branch

nt!ExFreePoolWithTag+0x15e3:
fffff801`46f5d263 498d8800150000  lea     rcx,[r8+1500h]

nt!ExFreePoolWithTag+0x15ea:
fffff801`46f5d26a 4803c8          add     rcx,rax

nt!ExFreePoolWithTag+0x15ed:
fffff801`46f5d26d 4885c9          test    rcx,rcx
fffff801`46f5d270 742a            je      nt!ExFreePoolWithTag+0x161c (fffff801`46f5d29c)  Branch

nt!ExFreePoolWithTag+0x15f2:
fffff801`46f5d272 ff411c          inc     dword ptr [rcx+1Ch]
fffff801`46f5d275 0fb74110        movzx   eax,word ptr [rcx+10h]
fffff801`46f5d279 663901          cmp     word ptr [rcx],ax
fffff801`46f5d27c 731e            jae     nt!ExFreePoolWithTag+0x161c (fffff801`46f5d29c)  Branch

nt!ExFreePoolWithTag+0x15fe:
fffff801`46f5d27e 488b05b3731f00  mov     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff801`47154638)]
fffff801`46f5d285 488bd6          mov     rdx,rsi
fffff801`46f5d288 ff4120          inc     dword ptr [rcx+20h]
fffff801`46f5d28b 4833c3          xor     rax,rbx
fffff801`46f5d28e 48894308        mov     qword ptr [rbx+8],rax
fffff801`46f5d292 e869f0e6ff      call    nt!ExpInterlockedPushEntrySList (fffff801`46dcc300)
fffff801`46f5d297 e9da040000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x161c:
fffff801`46f5d29c f705da701f0000010000 test dword ptr [nt!ExpPoolFlags (fffff801`47154380)],100h
fffff801`46f5d2a6 0f8485000000    je      nt!ExFreePoolWithTag+0x16b1 (fffff801`46f5d331)  Branch

nt!ExFreePoolWithTag+0x162c:
fffff801`46f5d2ac 418b860c010000  mov     eax,dword ptr [r14+10Ch]
fffff801`46f5d2b3 83f820          cmp     eax,20h
fffff801`46f5d2b6 7223            jb      nt!ExFreePoolWithTag+0x165b (fffff801`46f5d2db)  Branch

nt!ExFreePoolWithTag+0x1638:
fffff801`46f5d2b8 3d00010000      cmp     eax,100h
fffff801`46f5d2bd 7207            jb      nt!ExFreePoolWithTag+0x1646 (fffff801`46f5d2c6)  Branch

nt!ExFreePoolWithTag+0x163f:
fffff801`46f5d2bf ba01000000      mov     edx,1
fffff801`46f5d2c4 eb0d            jmp     nt!ExFreePoolWithTag+0x1653 (fffff801`46f5d2d3)  Branch

nt!ExFreePoolWithTag+0x1646:
fffff801`46f5d2c6 418b8608010000  mov     eax,dword ptr [r14+108h]
fffff801`46f5d2cd 85c0            test    eax,eax
fffff801`46f5d2cf 750a            jne     nt!ExFreePoolWithTag+0x165b (fffff801`46f5d2db)  Branch

nt!ExFreePoolWithTag+0x1651:
fffff801`46f5d2d1 33d2            xor     edx,edx

nt!ExFreePoolWithTag+0x1653:
fffff801`46f5d2d3 498bce          mov     rcx,r14
fffff801`46f5d2d6 e8c5040000      call    nt!ExDeferredFreePool (fffff801`46f5d7a0)

nt!ExFreePoolWithTag+0x165b:
fffff801`46f5d2db 488b0556731f00  mov     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff801`47154638)]
fffff801`46f5d2e2 4833c3          xor     rax,rbx
fffff801`46f5d2e5 48894308        mov     qword ptr [rbx+8],rax
fffff801`46f5d2e9 410f0d8e00010000 prefetchw [r14+100h]
fffff801`46f5d2f1 498b8600010000  mov     rax,qword ptr [r14+100h]
fffff801`46f5d2f8 0f1f4000        nop     dword ptr [rax]
fffff801`46f5d2fc 0f1f840000000000 nop     dword ptr [rax+rax]
fffff801`46f5d304 0f1f4000        nop     dword ptr [rax]
fffff801`46f5d308 0f1f840000000000 nop     dword ptr [rax+rax]

nt!ExFreePoolWithTag+0x1690:
fffff801`46f5d310 488906          mov     qword ptr [rsi],rax
fffff801`46f5d313 488bc8          mov     rcx,rax
fffff801`46f5d316 f0490fb1b600010000 lock cmpxchg qword ptr [r14+100h],rsi
fffff801`46f5d31f 483bc1          cmp     rax,rcx
fffff801`46f5d322 75ec            jne     nt!ExFreePoolWithTag+0x1690 (fffff801`46f5d310)  Branch

nt!ExFreePoolWithTag+0x16a4:
fffff801`46f5d324 f041ff860c010000 lock inc dword ptr [r14+10Ch]
fffff801`46f5d32c e945040000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x16b1:
fffff801`46f5d331 f041ff8680000000 lock inc dword ptr [r14+80h]
fffff801`46f5d339 488b442440      mov     rax,qword ptr [rsp+40h]
fffff801`46f5d33e f0490fc18698000000 lock xadd qword ptr [r14+98h],rax
fffff801`46f5d347 498d4e08        lea     rcx,[r14+8]
fffff801`46f5d34b 4585ed          test    r13d,r13d
fffff801`46f5d34e 750f            jne     nt!ExFreePoolWithTag+0x16df (fffff801`46f5d35f)  Branch

nt!ExFreePoolWithTag+0x16d0:
fffff801`46f5d350 488d942498000000 lea     rdx,[rsp+98h]
fffff801`46f5d358 e85372d8ff      call    nt!KeAcquireInStackQueuedSpinLock (fffff801`46ce45b0)
fffff801`46f5d35d eb15            jmp     nt!ExFreePoolWithTag+0x16f4 (fffff801`46f5d374)  Branch

nt!ExFreePoolWithTag+0x16df:
fffff801`46f5d35f e83c4ddcff      call    nt!ExAcquireFastMutex (fffff801`46d220a0)
fffff801`46f5d364 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff801`46f5d36d 33d2            xor     edx,edx
fffff801`46f5d36f e87c02d7ff      call    nt!PsBoostThreadIo (fffff801`46ccd5f0)

nt!ExFreePoolWithTag+0x16f4:
fffff801`46f5d374 4c8b442468      mov     r8,qword ptr [rsp+68h]
fffff801`46f5d379 49f7c0ff0f0000  test    r8,0FFFh
fffff801`46f5d380 7462            je      nt!ExFreePoolWithTag+0x1764 (fffff801`46f5d3e4)  Branch

nt!ExFreePoolWithTag+0x1702:
fffff801`46f5d382 41387803        cmp     byte ptr [r8+3],dil
fffff801`46f5d386 755c            jne     nt!ExFreePoolWithTag+0x1764 (fffff801`46f5d3e4)  Branch

nt!ExFreePoolWithTag+0x1708:
fffff801`46f5d388 bf01000000      mov     edi,1
fffff801`46f5d38d 41387802        cmp     byte ptr [r8+2],dil
fffff801`46f5d391 7426            je      nt!ExFreePoolWithTag+0x1739 (fffff801`46f5d3b9)  Branch

nt!ExFreePoolWithTag+0x1713:
fffff801`46f5d393 498b5010        mov     rdx,qword ptr [r8+10h]
fffff801`46f5d397 498d4010        lea     rax,[r8+10h]
fffff801`46f5d39b 488b4808        mov     rcx,qword ptr [rax+8]
fffff801`46f5d39f 48394208        cmp     qword ptr [rdx+8],rax
fffff801`46f5d3a3 0f85a8010000    jne     nt!ExFreePoolWithTag+0x18d1 (fffff801`46f5d551)  Branch

nt!ExFreePoolWithTag+0x1729:
fffff801`46f5d3a9 483901          cmp     qword ptr [rcx],rax
fffff801`46f5d3ac 0f859f010000    jne     nt!ExFreePoolWithTag+0x18d1 (fffff801`46f5d551)  Branch

nt!ExFreePoolWithTag+0x1732:
fffff801`46f5d3b2 488911          mov     qword ptr [rcx],rdx
fffff801`46f5d3b5 48894a08        mov     qword ptr [rdx+8],rcx

nt!ExFreePoolWithTag+0x1739:
fffff801`46f5d3b9 410fb64002      movzx   eax,byte ptr [r8+2]
fffff801`46f5d3be 004302          add     byte ptr [rbx+2],al
fffff801`46f5d3c1 0fb74302        movzx   eax,word ptr [rbx+2]
fffff801`46f5d3c5 0fb6c8          movzx   ecx,al
fffff801`46f5d3c8 488bc3          mov     rax,rbx
fffff801`46f5d3cb 25ff0f0000      and     eax,0FFFh
fffff801`46f5d3d0 48c1e104        shl     rcx,4
fffff801`46f5d3d4 4803c8          add     rcx,rax
fffff801`46f5d3d7 4881f900100000  cmp     rcx,1000h
fffff801`46f5d3de 0f875a030000    ja      nt!ExFreePoolWithTag+0x1abe (fffff801`46f5d73e)  Branch

nt!ExFreePoolWithTag+0x1764:
fffff801`46f5d3e4 0fb70b          movzx   ecx,word ptr [rbx]
fffff801`46f5d3e7 84c9            test    cl,cl
fffff801`46f5d3e9 7471            je      nt!ExFreePoolWithTag+0x17dc (fffff801`46f5d45c)  Branch

nt!ExFreePoolWithTag+0x176b:
fffff801`46f5d3eb 0fb6c1          movzx   eax,cl
fffff801`46f5d3ee 488bd3          mov     rdx,rbx
fffff801`46f5d3f1 48c1e004        shl     rax,4
fffff801`46f5d3f5 482bd0          sub     rdx,rax
fffff801`46f5d3f8 807a0300        cmp     byte ptr [rdx+3],0
fffff801`46f5d3fc 755e            jne     nt!ExFreePoolWithTag+0x17dc (fffff801`46f5d45c)  Branch

nt!ExFreePoolWithTag+0x177e:
fffff801`46f5d3fe bf01000000      mov     edi,1
fffff801`46f5d403 40387a02        cmp     byte ptr [rdx+2],dil
fffff801`46f5d407 7426            je      nt!ExFreePoolWithTag+0x17af (fffff801`46f5d42f)  Branch

nt!ExFreePoolWithTag+0x1789:
fffff801`46f5d409 4c8b4210        mov     r8,qword ptr [rdx+10h]
fffff801`46f5d40d 488d4210        lea     rax,[rdx+10h]
fffff801`46f5d411 488b4808        mov     rcx,qword ptr [rax+8]
fffff801`46f5d415 49394008        cmp     qword ptr [r8+8],rax
fffff801`46f5d419 0f8532010000    jne     nt!ExFreePoolWithTag+0x18d1 (fffff801`46f5d551)  Branch

nt!ExFreePoolWithTag+0x179f:
fffff801`46f5d41f 483901          cmp     qword ptr [rcx],rax
fffff801`46f5d422 0f8529010000    jne     nt!ExFreePoolWithTag+0x18d1 (fffff801`46f5d551)  Branch

nt!ExFreePoolWithTag+0x17a8:
fffff801`46f5d428 4c8901          mov     qword ptr [rcx],r8
fffff801`46f5d42b 49894808        mov     qword ptr [r8+8],rcx

nt!ExFreePoolWithTag+0x17af:
fffff801`46f5d42f 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff801`46f5d433 488bda          mov     rbx,rdx
fffff801`46f5d436 004202          add     byte ptr [rdx+2],al
fffff801`46f5d439 0fb74202        movzx   eax,word ptr [rdx+2]
fffff801`46f5d43d 0fb6c8          movzx   ecx,al
fffff801`46f5d440 488bc2          mov     rax,rdx
fffff801`46f5d443 25ff0f0000      and     eax,0FFFh
fffff801`46f5d448 48c1e104        shl     rcx,4
fffff801`46f5d44c 4803c8          add     rcx,rax
fffff801`46f5d44f 4881f900100000  cmp     rcx,1000h
fffff801`46f5d456 0f87fe020000    ja      nt!ExFreePoolWithTag+0x1ada (fffff801`46f5d75a)  Branch

nt!ExFreePoolWithTag+0x17dc:
fffff801`46f5d45c 48f7c3ff0f0000  test    rbx,0FFFh
fffff801`46f5d463 0f85ab000000    jne     nt!ExFreePoolWithTag+0x1894 (fffff801`46f5d514)  Branch

nt!ExFreePoolWithTag+0x17e9:
fffff801`46f5d469 0fb74302        movzx   eax,word ptr [rbx+2]
fffff801`46f5d46d 48c1e004        shl     rax,4
fffff801`46f5d471 4803c3          add     rax,rbx
fffff801`46f5d474 48a9ff0f0000    test    rax,0FFFh
fffff801`46f5d47a 0f8594000000    jne     nt!ExFreePoolWithTag+0x1894 (fffff801`46f5d514)  Branch

nt!ExFreePoolWithTag+0x1800:
fffff801`46f5d480 4585ed          test    r13d,r13d
fffff801`46f5d483 7557            jne     nt!ExFreePoolWithTag+0x185c (fffff801`46f5d4dc)  Branch

nt!ExFreePoolWithTag+0x1805:
fffff801`46f5d485 488d8c2498000000 lea     rcx,[rsp+98h]
fffff801`46f5d48d e84e3dd0ff      call    nt!KxReleaseQueuedSpinLock (fffff801`46c611e0)
fffff801`46f5d492 8b055c701f00    mov     eax,dword ptr [nt!KiIrqlFlags (fffff801`471544f4)]
fffff801`46f5d498 0fb6bc24a8000000 movzx   edi,byte ptr [rsp+0A8h]
fffff801`46f5d4a0 85c0            test    eax,eax
fffff801`46f5d4a2 742e            je      nt!ExFreePoolWithTag+0x1852 (fffff801`46f5d4d2)  Branch

nt!ExFreePoolWithTag+0x1824:
fffff801`46f5d4a4 a801            test    al,1
fffff801`46f5d4a6 742a            je      nt!ExFreePoolWithTag+0x1852 (fffff801`46f5d4d2)  Branch

nt!ExFreePoolWithTag+0x1828:
fffff801`46f5d4a8 440f20c0        mov     rax,cr8
fffff801`46f5d4ac 3c02            cmp     al,2
fffff801`46f5d4ae 7222            jb      nt!ExFreePoolWithTag+0x1852 (fffff801`46f5d4d2)  Branch

nt!ExFreePoolWithTag+0x1830:
fffff801`46f5d4b0 4080ff02        cmp     dil,2
fffff801`46f5d4b4 731c            jae     nt!ExFreePoolWithTag+0x1852 (fffff801`46f5d4d2)  Branch

nt!ExFreePoolWithTag+0x1836:
fffff801`46f5d4b6 65488b0c2520000000 mov   rcx,qword ptr gs:[20h]
fffff801`46f5d4bf 488b81b8610000  mov     rax,qword ptr [rcx+61B8h]
fffff801`46f5d4c6 f08120fffffeff  lock and dword ptr [rax],0FFFEFFFFh
fffff801`46f5d4cd e8aa0ee6ff      call    nt!KiRemoveSystemWorkPriorityKick (fffff801`46dbe37c)

nt!ExFreePoolWithTag+0x1852:
fffff801`46f5d4d2 400fb6c7        movzx   eax,dil
fffff801`46f5d4d6 440f22c0        mov     cr8,rax
fffff801`46f5d4da eb19            jmp     nt!ExFreePoolWithTag+0x1875 (fffff801`46f5d4f5)  Branch

nt!ExFreePoolWithTag+0x185c:
fffff801`46f5d4dc 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff801`46f5d4e5 b201            mov     dl,1
fffff801`46f5d4e7 e80401d7ff      call    nt!PsBoostThreadIo (fffff801`46ccd5f0)
fffff801`46f5d4ec 498d4e08        lea     rcx,[r14+8]
fffff801`46f5d4f0 e8fb72ccff      call    nt!KeReleaseGuardedMutex (fffff801`46c247f0)

nt!ExFreePoolWithTag+0x1875:
fffff801`46f5d4f5 f049ff8688000000 lock inc qword ptr [r14+88h]
fffff801`46f5d4fd 448b442434      mov     r8d,dword ptr [rsp+34h]
fffff801`46f5d502 ba00100000      mov     edx,1000h
fffff801`46f5d507 488bcb          mov     rcx,rbx
fffff801`46f5d50a e80da8e0ff      call    nt!ExFreeHeapPages (fffff801`46d67d1c)
fffff801`46f5d50f e962020000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x1894:
fffff801`46f5d514 c6430300        mov     byte ptr [rbx+3],0
fffff801`46f5d518 0fb74302        movzx   eax,word ptr [rbx+2]
fffff801`46f5d51c 0fb6c8          movzx   ecx,al
fffff801`46f5d51f 85ff            test    edi,edi
fffff801`46f5d521 7414            je      nt!ExFreePoolWithTag+0x18b7 (fffff801`46f5d537)  Branch

nt!ExFreePoolWithTag+0x18a3:
fffff801`46f5d523 8bd1            mov     edx,ecx
fffff801`46f5d525 48c1e204        shl     rdx,4
fffff801`46f5d529 4803d3          add     rdx,rbx
fffff801`46f5d52c 48f7c2ff0f0000  test    rdx,0FFFh
fffff801`46f5d533 7402            je      nt!ExFreePoolWithTag+0x18b7 (fffff801`46f5d537)  Branch

nt!ExFreePoolWithTag+0x18b5:
fffff801`46f5d535 880a            mov     byte ptr [rdx],cl

nt!ExFreePoolWithTag+0x18b7:
fffff801`46f5d537 ffc9            dec     ecx
fffff801`46f5d539 4883c310        add     rbx,10h
fffff801`46f5d53d 4883c114        add     rcx,14h
fffff801`46f5d541 48c1e104        shl     rcx,4
fffff801`46f5d545 4903ce          add     rcx,r14
fffff801`46f5d548 488b01          mov     rax,qword ptr [rcx]
fffff801`46f5d54b 48394808        cmp     qword ptr [rax+8],rcx
fffff801`46f5d54f 7407            je      nt!ExFreePoolWithTag+0x18d8 (fffff801`46f5d558)  Branch

nt!ExFreePoolWithTag+0x18d1:
fffff801`46f5d551 b903000000      mov     ecx,3
fffff801`46f5d556 cd29            int     29h

nt!ExFreePoolWithTag+0x18d8:
fffff801`46f5d558 488903          mov     qword ptr [rbx],rax
fffff801`46f5d55b 48894b08        mov     qword ptr [rbx+8],rcx
fffff801`46f5d55f 48895808        mov     qword ptr [rax+8],rbx
fffff801`46f5d563 488919          mov     qword ptr [rcx],rbx
fffff801`46f5d566 4585ed          test    r13d,r13d
fffff801`46f5d569 7558            jne     nt!ExFreePoolWithTag+0x1943 (fffff801`46f5d5c3)  Branch

nt!ExFreePoolWithTag+0x18eb:
fffff801`46f5d56b 488d8c2498000000 lea     rcx,[rsp+98h]
fffff801`46f5d573 e8683cd0ff      call    nt!KxReleaseQueuedSpinLock (fffff801`46c611e0)
fffff801`46f5d578 8b05766f1f00    mov     eax,dword ptr [nt!KiIrqlFlags (fffff801`471544f4)]
fffff801`46f5d57e 0fb69c24a8000000 movzx   ebx,byte ptr [rsp+0A8h]
fffff801`46f5d586 85c0            test    eax,eax
fffff801`46f5d588 742d            je      nt!ExFreePoolWithTag+0x1937 (fffff801`46f5d5b7)  Branch

nt!ExFreePoolWithTag+0x190a:
fffff801`46f5d58a a801            test    al,1
fffff801`46f5d58c 7429            je      nt!ExFreePoolWithTag+0x1937 (fffff801`46f5d5b7)  Branch

nt!ExFreePoolWithTag+0x190e:
fffff801`46f5d58e 440f20c0        mov     rax,cr8
fffff801`46f5d592 3c02            cmp     al,2
fffff801`46f5d594 7221            jb      nt!ExFreePoolWithTag+0x1937 (fffff801`46f5d5b7)  Branch

nt!ExFreePoolWithTag+0x1916:
fffff801`46f5d596 80fb02          cmp     bl,2
fffff801`46f5d599 731c            jae     nt!ExFreePoolWithTag+0x1937 (fffff801`46f5d5b7)  Branch

nt!ExFreePoolWithTag+0x191b:
fffff801`46f5d59b 65488b0c2520000000 mov   rcx,qword ptr gs:[20h]
fffff801`46f5d5a4 488b81b8610000  mov     rax,qword ptr [rcx+61B8h]
fffff801`46f5d5ab f08120fffffeff  lock and dword ptr [rax],0FFFEFFFFh
fffff801`46f5d5b2 e8c50de6ff      call    nt!KiRemoveSystemWorkPriorityKick (fffff801`46dbe37c)

nt!ExFreePoolWithTag+0x1937:
fffff801`46f5d5b7 0fb6c3          movzx   eax,bl
fffff801`46f5d5ba 440f22c0        mov     cr8,rax
fffff801`46f5d5be e9b3010000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x1943:
fffff801`46f5d5c3 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff801`46f5d5cc b201            mov     dl,1
fffff801`46f5d5ce e81d00d7ff      call    nt!PsBoostThreadIo (fffff801`46ccd5f0)
fffff801`46f5d5d3 498d4e08        lea     rcx,[r14+8]
fffff801`46f5d5d7 e81472ccff      call    nt!KeReleaseGuardedMutex (fffff801`46c247f0)
fffff801`46f5d5dc e995010000      jmp     nt!ExFreePoolWithTag+0x1af6 (fffff801`46f5d776)  Branch

nt!ExFreePoolWithTag+0x1961:
fffff801`46f5d5e1 448b0b          mov     r9d,dword ptr [rbx]
fffff801`46f5d5e4 ba04000000      mov     edx,4
fffff801`46f5d5e9 448b4304        mov     r8d,dword ptr [rbx+4]
fffff801`46f5d5ed b9c2000000      mov     ecx,0C2h
fffff801`46f5d5f2 4889742420      mov     qword ptr [rsp+20h],rsi
fffff801`46f5d5f7 e8e46fe6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d5fc cc              int     3

nt!ExFreePoolWithTag+0x197d:
fffff801`46f5d5fd 4c8bce          mov     r9,rsi
fffff801`46f5d600 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff801`46f5d605 4533c0          xor     r8d,r8d
fffff801`46f5d608 33d2            xor     edx,edx
fffff801`46f5d60a b9c2000000      mov     ecx,0C2h
fffff801`46f5d60f e8cc6fe6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d614 cc              int     3

nt!ExFreePoolWithTag+0x1995:
fffff801`46f5d615 ba22000000      mov     edx,22h
fffff801`46f5d61a 448bcb          mov     r9d,ebx
fffff801`46f5d61d 4c8bc6          mov     r8,rsi
fffff801`46f5d620 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff801`46f5d625 8d4af7          lea     ecx,[rdx-9]
fffff801`46f5d628 e8b36fe6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d62d cc              int     3

nt!ExFreePoolWithTag+0x19ae:
fffff801`46f5d62e 4c8b442438      mov     r8,qword ptr [rsp+38h]
fffff801`46f5d633 498bd4          mov     rdx,r12
fffff801`46f5d636 4c894c2420      mov     qword ptr [rsp+20h],r9
fffff801`46f5d63b b921000000      mov     ecx,21h
fffff801`46f5d640 4d8bcb          mov     r9,r11
fffff801`46f5d643 e8986fe6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d648 cc              int     3

nt!ExFreePoolWithTag+0x19c9:
fffff801`46f5d649 448b8c2448010000 mov     r9d,dword ptr [rsp+148h]
fffff801`46f5d651 4c8bc1          mov     r8,rcx
fffff801`46f5d654 b9c2000000      mov     ecx,0C2h
fffff801`46f5d659 4c89642420      mov     qword ptr [rsp+20h],r12
fffff801`46f5d65e ba0d000000      mov     edx,0Dh
fffff801`46f5d663 e8786fe6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d668 cc              int     3

nt!ExFreePoolWithTag+0x19e9:
fffff801`46f5d669 448b0b          mov     r9d,dword ptr [rbx]
fffff801`46f5d66c ba07000000      mov     edx,7
fffff801`46f5d671 448b4304        mov     r8d,dword ptr [rbx+4]
fffff801`46f5d675 b9c2000000      mov     ecx,0C2h
fffff801`46f5d67a 4889742420      mov     qword ptr [rsp+20h],rsi
fffff801`46f5d67f e85c6fe6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d684 cc              int     3

nt!ExFreePoolWithTag+0x1a05:
fffff801`46f5d685 458b08          mov     r9d,dword ptr [r8]
fffff801`46f5d688 ba0b000000      mov     edx,0Bh
fffff801`46f5d68d b9c2000000      mov     ecx,0C2h
fffff801`46f5d692 4889742420      mov     qword ptr [rsp+20h],rsi
fffff801`46f5d697 e8446fe6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d69c cc              int     3

nt!ExFreePoolWithTag+0x1a1d:
fffff801`46f5d69d 458b08          mov     r9d,dword ptr [r8]
fffff801`46f5d6a0 ba11000000      mov     edx,11h
fffff801`46f5d6a5 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff801`46f5d6aa b9c2000000      mov     ecx,0C2h
fffff801`46f5d6af e82c6fe6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d6b4 cc              int     3

nt!ExFreePoolWithTag+0x1a35:
fffff801`46f5d6b5 8b03            mov     eax,dword ptr [rbx]
fffff801`46f5d6b7 4c8bca          mov     r9,rdx
fffff801`46f5d6ba ba20000000      mov     edx,20h
fffff801`46f5d6bf 4889442420      mov     qword ptr [rsp+20h],rax
fffff801`46f5d6c4 4c8bc3          mov     r8,rbx
fffff801`46f5d6c7 8d4af9          lea     ecx,[rdx-7]
fffff801`46f5d6ca e8116fe6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d6cf cc              int     3

nt!ExFreePoolWithTag+0x1a50:
fffff801`46f5d6d0 458b08          mov     r9d,dword ptr [r8]
fffff801`46f5d6d3 b9c2000000      mov     ecx,0C2h
fffff801`46f5d6d8 8bc2            mov     eax,edx
fffff801`46f5d6da ba10000000      mov     edx,10h
fffff801`46f5d6df 4903c0          add     rax,r8
fffff801`46f5d6e2 4889442420      mov     qword ptr [rsp+20h],rax
fffff801`46f5d6e7 e8f46ee6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d6ec cc              int     3

nt!ExFreePoolWithTag+0x1a6d:
fffff801`46f5d6ed ba25000000      mov     edx,25h
fffff801`46f5d6f2 458bcf          mov     r9d,r15d
fffff801`46f5d6f5 4d8bc2          mov     r8,r10
fffff801`46f5d6f8 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff801`46f5d6fd 8d4af4          lea     ecx,[rdx-0Ch]
fffff801`46f5d700 e8db6ee6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d705 cc              int     3

nt!ExFreePoolWithTag+0x1a86:
fffff801`46f5d706 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff801`46f5d70b 498bd4          mov     rdx,r12
fffff801`46f5d70e 4c894c2420      mov     qword ptr [rsp+20h],r9
fffff801`46f5d713 b921000000      mov     ecx,21h
fffff801`46f5d718 4d8bcb          mov     r9,r11
fffff801`46f5d71b e8c06ee6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d720 cc              int     3

nt!ExFreePoolWithTag+0x1aa1:
fffff801`46f5d721 448b4b04        mov     r9d,dword ptr [rbx+4]
fffff801`46f5d725 4c8d4310        lea     r8,[rbx+10h]
fffff801`46f5d729 ba0d000000      mov     edx,0Dh
fffff801`46f5d72e 4c89642420      mov     qword ptr [rsp+20h],r12
fffff801`46f5d733 b9c2000000      mov     ecx,0C2h
fffff801`46f5d738 e8a36ee6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d73d cc              int     3

nt!ExFreePoolWithTag+0x1abe:
fffff801`46f5d73e 448b0b          mov     r9d,dword ptr [rbx]
fffff801`46f5d741 ba04000000      mov     edx,4
fffff801`46f5d746 448b4304        mov     r8d,dword ptr [rbx+4]
fffff801`46f5d74a b9c2000000      mov     ecx,0C2h
fffff801`46f5d74f 4889742420      mov     qword ptr [rsp+20h],rsi
fffff801`46f5d754 e8876ee6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d759 cc              int     3

nt!ExFreePoolWithTag+0x1ada:
fffff801`46f5d75a 448b0a          mov     r9d,dword ptr [rdx]
fffff801`46f5d75d b9c2000000      mov     ecx,0C2h
fffff801`46f5d762 448b4204        mov     r8d,dword ptr [rdx+4]
fffff801`46f5d766 ba04000000      mov     edx,4
fffff801`46f5d76b 4889742420      mov     qword ptr [rsp+20h],rsi
fffff801`46f5d770 e86b6ee6ff      call    nt!KeBugCheckEx (fffff801`46dc45e0)
fffff801`46f5d775 cc              int     3

nt!ExFreePoolWithTag+0x1af6:
fffff801`46f5d776 4c8d9c2400010000 lea     r11,[rsp+100h]
fffff801`46f5d77e 498b5b30        mov     rbx,qword ptr [r11+30h]
fffff801`46f5d782 498b7338        mov     rsi,qword ptr [r11+38h]
fffff801`46f5d786 498be3          mov     rsp,r11
fffff801`46f5d789 415f            pop     r15
fffff801`46f5d78b 415e            pop     r14
fffff801`46f5d78d 415d            pop     r13
fffff801`46f5d78f 415c            pop     r12
fffff801`46f5d791 5f              pop     rdi
fffff801`46f5d792 c3              ret
