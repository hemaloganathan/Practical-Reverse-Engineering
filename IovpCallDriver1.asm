0: kd> uf IovpCallDriver1
nt!IovpCallDriver1:
fffff805`1f74dc8c 4053            push    rbx
fffff805`1f74dc8e 55              push    rbp
fffff805`1f74dc8f 56              push    rsi
fffff805`1f74dc90 57              push    rdi
fffff805`1f74dc91 4154            push    r12
fffff805`1f74dc93 4155            push    r13
fffff805`1f74dc95 4156            push    r14
fffff805`1f74dc97 4157            push    r15
fffff805`1f74dc99 4883ec68        sub     rsp,68h
fffff805`1f74dc9d 4c8bf1          mov     r14,rcx
fffff805`1f74dca0 488bb1a8000000  mov     rsi,qword ptr [rcx+0A8h]
fffff805`1f74dca7 440f20c3        mov     rbx,cr8
fffff805`1f74dcab 8b4610          mov     eax,dword ptr [rsi+10h]
fffff805`1f74dcae 25000000c0      and     eax,0C0000000h
fffff805`1f74dcb3 7418            je      nt!IovpCallDriver1+0x41 (fffff805`1f74dccd)  Branch

nt!IovpCallDriver1+0x29:
fffff805`1f74dcb5 3d00000040      cmp     eax,40000000h
fffff805`1f74dcba 0f85e4040000    jne     nt!IovpCallDriver1+0x518 (fffff805`1f74e1a4)  Branch

nt!IovpCallDriver1+0x34:
fffff805`1f74dcc0 488bce          mov     rcx,rsi
fffff805`1f74dcc3 e85cf50000      call    nt!VfIrpDatabaseEntryFindAndLock (fffff805`1f75d224)
fffff805`1f74dcc8 488be8          mov     rbp,rax
fffff805`1f74dccb eb37            jmp     nt!IovpCallDriver1+0x78 (fffff805`1f74dd04)  Branch

nt!IovpCallDriver1+0x41:
fffff805`1f74dccd 488bce          mov     rcx,rsi
fffff805`1f74dcd0 e84ff50000      call    nt!VfIrpDatabaseEntryFindAndLock (fffff805`1f75d224)
fffff805`1f74dcd5 488be8          mov     rbp,rax
fffff805`1f74dcd8 4885c0          test    rax,rax
fffff805`1f74dcdb 7407            je      nt!IovpCallDriver1+0x58 (fffff805`1f74dce4)  Branch

nt!IovpCallDriver1+0x51:
fffff805`1f74dcdd 0fba6e101e      bts     dword ptr [rsi+10h],1Eh
fffff805`1f74dce2 eb20            jmp     nt!IovpCallDriver1+0x78 (fffff805`1f74dd04)  Branch

nt!IovpCallDriver1+0x58:
fffff805`1f74dce4 488bce          mov     rcx,rsi
fffff805`1f74dce7 e80c070100      call    nt!VfPacketCreateAndLock (fffff805`1f75e3f8)
fffff805`1f74dcec 488be8          mov     rbp,rax
fffff805`1f74dcef 8b4610          mov     eax,dword ptr [rsi+10h]
fffff805`1f74dcf2 4885ed          test    rbp,rbp
fffff805`1f74dcf5 7406            je      nt!IovpCallDriver1+0x71 (fffff805`1f74dcfd)  Branch

nt!IovpCallDriver1+0x6b:
fffff805`1f74dcf7 0fbae81e        bts     eax,1Eh
fffff805`1f74dcfb eb04            jmp     nt!IovpCallDriver1+0x75 (fffff805`1f74dd01)  Branch

nt!IovpCallDriver1+0x71:
fffff805`1f74dcfd 0fbae81f        bts     eax,1Fh

nt!IovpCallDriver1+0x75:
fffff805`1f74dd01 894610          mov     dword ptr [rsi+10h],eax

nt!IovpCallDriver1+0x78:
fffff805`1f74dd04 4885ed          test    rbp,rbp
fffff805`1f74dd07 0f8497040000    je      nt!IovpCallDriver1+0x518 (fffff805`1f74e1a4)  Branch

nt!IovpCallDriver1+0x81:
fffff805`1f74dd0d 8b8de8000000    mov     ecx,dword ptr [rbp+0E8h]
fffff805`1f74dd13 33c0            xor     eax,eax
fffff805`1f74dd15 885d3d          mov     byte ptr [rbp+3Dh],bl
fffff805`1f74dd18 4c8bc6          mov     r8,rsi
fffff805`1f74dd1b 885d3c          mov     byte ptr [rbp+3Ch],bl
fffff805`1f74dd1e 8ad3            mov     dl,bl
fffff805`1f74dd20 4c8bbeb8000000  mov     r15,qword ptr [rsi+0B8h]
fffff805`1f74dd27 4889442450      mov     qword ptr [rsp+50h],rax
fffff805`1f74dd2c 4983ef48        sub     r15,48h
fffff805`1f74dd30 498b86b0000000  mov     rax,qword ptr [r14+0B0h]
fffff805`1f74dd37 4d8bcf          mov     r9,r15
fffff805`1f74dd3a 4889442428      mov     qword ptr [rsp+28h],rax
fffff805`1f74dd3f 48896c2420      mov     qword ptr [rsp+20h],rbp
fffff805`1f74dd44 48898424c8000000 mov     qword ptr [rsp+0C8h],rax
fffff805`1f74dd4c e8434c0000      call    nt!VfPendingShouldForce (fffff805`1f752994)
fffff805`1f74dd51 4c8ba5f0000000  mov     r12,qword ptr [rbp+0F0h]
fffff805`1f74dd58 8bc8            mov     ecx,eax
fffff805`1f74dd5a 4d8baea0000000  mov     r13,qword ptr [r14+0A0h]
fffff805`1f74dd61 898424b8000000  mov     dword ptr [rsp+0B8h],eax
fffff805`1f74dd68 4d85e4          test    r12,r12
fffff805`1f74dd6b 752c            jne     nt!IovpCallDriver1+0x10d (fffff805`1f74dd99)  Branch

nt!IovpCallDriver1+0xe1:
fffff805`1f74dd6d 8b4538          mov     eax,dword ptr [rbp+38h]
fffff805`1f74dd70 a801            test    al,1
fffff805`1f74dd72 7525            jne     nt!IovpCallDriver1+0x10d (fffff805`1f74dd99)  Branch

nt!IovpCallDriver1+0xe8:
fffff805`1f74dd74 83c801          or      eax,1
fffff805`1f74dd77 418d7c2401      lea     edi,[r12+1]
fffff805`1f74dd7c 448bc1          mov     r8d,ecx
fffff805`1f74dd7f 894538          mov     dword ptr [rbp+38h],eax
fffff805`1f74dd82 498bcd          mov     rcx,r13
fffff805`1f74dd85 89bc24b0000000  mov     dword ptr [rsp+0B0h],edi
fffff805`1f74dd8c 488bd5          mov     rdx,rbp
fffff805`1f74dd8f e8d0040100      call    nt!IovpSessionDataCreate (fffff805`1f75e264)
fffff805`1f74dd94 4c8be0          mov     r12,rax
fffff805`1f74dd97 eb09            jmp     nt!IovpCallDriver1+0x116 (fffff805`1f74dda2)  Branch

nt!IovpCallDriver1+0x10d:
fffff805`1f74dd99 33ff            xor     edi,edi
fffff805`1f74dd9b 89bc24b0000000  mov     dword ptr [rsp+0B0h],edi

nt!IovpCallDriver1+0x116:
fffff805`1f74dda2 4d8926          mov     qword ptr [r14],r12
fffff805`1f74dda5 49896e10        mov     qword ptr [r14+10h],rbp
fffff805`1f74dda9 4d85e4          test    r12,r12
fffff805`1f74ddac 0f84d8030000    je      nt!IovpCallDriver1+0x4fe (fffff805`1f74e18a)  Branch

nt!IovpCallDriver1+0x126:
fffff805`1f74ddb2 48bb1400000080f7ffff mov rbx,0FFFFF78000000014h
fffff805`1f74ddbc 488b1b          mov     rbx,qword ptr [rbx]
fffff805`1f74ddbf 85ff            test    edi,edi
fffff805`1f74ddc1 743f            je      nt!IovpCallDriver1+0x176 (fffff805`1f74de02)  Branch

nt!IovpCallDriver1+0x137:
fffff805`1f74ddc3 498bcd          mov     rcx,r13
fffff805`1f74ddc6 e8c5660000      call    nt!IovUtilGetBottomDeviceObjectWithTag (fffff805`1f754490)
fffff805`1f74ddcb 8b8de8000000    mov     ecx,dword ptr [rbp+0E8h]
fffff805`1f74ddd1 4c8bc6          mov     r8,rsi
fffff805`1f74ddd4 488bd0          mov     rdx,rax
fffff805`1f74ddd7 488bf8          mov     rdi,rax
fffff805`1f74ddda e8d1240100      call    nt!VfIrpLogRecordEvent (fffff805`1f7602b0)
fffff805`1f74dddf ba56726649      mov     edx,49667256h
fffff805`1f74dde4 488bcf          mov     rcx,rdi
fffff805`1f74dde7 e814587eff      call    nt!ObfDereferenceObjectWithTag (fffff805`1ef33600)
fffff805`1f74ddec f0ff4514        lock inc dword ptr [rbp+14h]
fffff805`1f74ddf0 ff4518          inc     dword ptr [rbp+18h]
fffff805`1f74ddf3 498bcc          mov     rcx,r12
fffff805`1f74ddf6 e8dd050100      call    nt!IovpSessionDataReference (fffff805`1f75e3d8)
fffff805`1f74ddfb 8bbc24b0000000  mov     edi,dword ptr [rsp+0B0h]

nt!IovpCallDriver1+0x176:
fffff805`1f74de02 48837e6800      cmp     qword ptr [rsi+68h],0
fffff805`1f74de07 741a            je      nt!IovpCallDriver1+0x197 (fffff805`1f74de23)  Branch

nt!IovpCallDriver1+0x17d:
fffff805`1f74de09 488b9424c8000000 mov     rdx,qword ptr [rsp+0C8h]
fffff805`1f74de11 4c8bc6          mov     r8,rsi
fffff805`1f74de14 b903020000      mov     ecx,203h
fffff805`1f74de19 e83eaa9dff      call    nt!ViErrorReport1 (fffff805`1f12885c)
fffff805`1f74de1e 4883666800      and     qword ptr [rsi+68h],0

nt!IovpCallDriver1+0x197:
fffff805`1f74de23 8b4538          mov     eax,dword ptr [rbp+38h]
fffff805`1f74de26 a810            test    al,10h
fffff805`1f74de28 7415            je      nt!IovpCallDriver1+0x1b3 (fffff805`1f74de3f)  Branch

nt!IovpCallDriver1+0x19e:
fffff805`1f74de2a 488b9424c8000000 mov     rdx,qword ptr [rsp+0C8h]
fffff805`1f74de32 4c8bc6          mov     r8,rsi
fffff805`1f74de35 b905020000      mov     ecx,205h
fffff805`1f74de3a e81daa9dff      call    nt!ViErrorReport1 (fffff805`1f12885c)

nt!IovpCallDriver1+0x1b3:
fffff805`1f74de3f 8a4642          mov     al,byte ptr [rsi+42h]
fffff805`1f74de42 384643          cmp     byte ptr [rsi+43h],al
fffff805`1f74de45 7f31            jg      nt!IovpCallDriver1+0x1ec (fffff805`1f74de78)  Branch

nt!IovpCallDriver1+0x1bb:
fffff805`1f74de47 418a07          mov     al,byte ptr [r15]
fffff805`1f74de4a 2c03            sub     al,3
fffff805`1f74de4c 3c01            cmp     al,1
fffff805`1f74de4e 7728            ja      nt!IovpCallDriver1+0x1ec (fffff805`1f74de78)  Branch

nt!IovpCallDriver1+0x1c4:
fffff805`1f74de50 498b86a8000000  mov     rax,qword ptr [r14+0A8h]
fffff805`1f74de57 4883780800      cmp     qword ptr [rax+8],0
fffff805`1f74de5c 741a            je      nt!IovpCallDriver1+0x1ec (fffff805`1f74de78)  Branch

nt!IovpCallDriver1+0x1d2:
fffff805`1f74de5e f70598cbaeff00600000 test dword ptr [nt!MmVerifierData (fffff805`1f23aa00)],6000h
fffff805`1f74de68 740e            je      nt!IovpCallDriver1+0x1ec (fffff805`1f74de78)  Branch

nt!IovpCallDriver1+0x1de:
fffff805`1f74de6a 4d8bc7          mov     r8,r15
fffff805`1f74de6d 488bd5          mov     rdx,rbp
fffff805`1f74de70 498bce          mov     rcx,r14
fffff805`1f74de73 e8e8a29dff      call    nt!MdlInvariantPreProcessing1 (fffff805`1f128160)

nt!IovpCallDriver1+0x1ec:
fffff805`1f74de78 498b542430      mov     rdx,qword ptr [r12+30h]
fffff805`1f74de7d 498bcd          mov     rcx,r13
fffff805`1f74de80 e8730c0000      call    nt!IovpExamineDevObjForwarding (fffff805`1f74eaf8)
fffff805`1f74de85 4189442438      mov     dword ptr [r12+38h],eax
fffff805`1f74de8a 4c8bce          mov     r9,rsi
fffff805`1f74de8d 488d8424c0000000 lea     rax,[rsp+0C0h]
fffff805`1f74de95 8bd7            mov     edx,edi
fffff805`1f74de97 4889442438      mov     qword ptr [rsp+38h],rax
fffff805`1f74de9c 488bcd          mov     rcx,rbp
fffff805`1f74de9f 488d442440      lea     rax,[rsp+40h]
fffff805`1f74dea4 4889442430      mov     qword ptr [rsp+30h],rax
fffff805`1f74dea9 488b8424c8000000 mov     rax,qword ptr [rsp+0C8h]
fffff805`1f74deb1 4c897c2428      mov     qword ptr [rsp+28h],r15
fffff805`1f74deb6 4889442420      mov     qword ptr [rsp+20h],rax
fffff805`1f74debb e8d80c0000      call    nt!IovpExamineIrpStackForwarding (fffff805`1f74eb98)
fffff805`1f74dec0 83bc24b800000000 cmp     dword ptr [rsp+0B8h],0
fffff805`1f74dec8 741b            je      nt!IovpCallDriver1+0x259 (fffff805`1f74dee5)  Branch

nt!IovpCallDriver1+0x23e:
fffff805`1f74deca f0ff4514        lock inc dword ptr [rbp+14h]
fffff805`1f74dece ff4518          inc     dword ptr [rbp+18h]
fffff805`1f74ded1 488bce          mov     rcx,rsi
fffff805`1f74ded4 4c89bdd8000000  mov     qword ptr [rbp+0D8h],r15
fffff805`1f74dedb e8e84b0000      call    nt!VfPendingStartLogging (fffff805`1f752ac8)
fffff805`1f74dee0 4889442450      mov     qword ptr [rsp+50h],rax

nt!IovpCallDriver1+0x259:
fffff805`1f74dee5 488b4c2440      mov     rcx,qword ptr [rsp+40h]
fffff805`1f74deea 498bd7          mov     rdx,r15
fffff805`1f74deed e82a6b0000      call    nt!VfMajorIsNewRequest (fffff805`1f754a1c)
fffff805`1f74def2 4c8b4c2440      mov     r9,qword ptr [rsp+40h]
fffff805`1f74def7 488d542448      lea     rdx,[rsp+48h]
fffff805`1f74defc 4889542438      mov     qword ptr [rsp+38h],rdx
fffff805`1f74df01 498d4c2450      lea     rcx,[r12+50h]
fffff805`1f74df06 8b9424c0000000  mov     edx,dword ptr [rsp+0C0h]
fffff805`1f74df0d 4d8bc7          mov     r8,r15
fffff805`1f74df10 c744243001000000 mov     dword ptr [rsp+30h],1
fffff805`1f74df18 89442428        mov     dword ptr [rsp+28h],eax
fffff805`1f74df1c 89542420        mov     dword ptr [rsp+20h],edx
fffff805`1f74df20 8a5643          mov     dl,byte ptr [rsi+43h]
fffff805`1f74df23 898424b8000000  mov     dword ptr [rsp+0B8h],eax
fffff805`1f74df2a e8edfbffff      call    nt!IovpAdvanceStackDownwards (fffff805`1f74db1c)
fffff805`1f74df2f 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff805`1f74df34 48895f30        mov     qword ptr [rdi+30h],rbx
fffff805`1f74df38 85c0            test    eax,eax
fffff805`1f74df3a 7555            jne     nt!IovpCallDriver1+0x305 (fffff805`1f74df91)  Branch

nt!IovpCallDriver1+0x2b0:
fffff805`1f74df3c 410fba6e181a    bts     dword ptr [r14+18h],1Ah
fffff805`1f74df42 498d4620        lea     rax,[r14+20h]
fffff805`1f74df46 83bc24b800000000 cmp     dword ptr [rsp+0B8h],0
fffff805`1f74df4e 48894008        mov     qword ptr [rax+8],rax
fffff805`1f74df52 488900          mov     qword ptr [rax],rax
fffff805`1f74df55 48895f38        mov     qword ptr [rdi+38h],rbx
fffff805`1f74df59 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff805`1f74df62 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff805`1f74df67 8b9c24b0000000  mov     ebx,dword ptr [rsp+0B0h]
fffff805`1f74df6e 48894770        mov     qword ptr [rdi+70h],rax
fffff805`1f74df72 7424            je      nt!IovpCallDriver1+0x30c (fffff805`1f74df98)  Branch

nt!IovpCallDriver1+0x2e8:
fffff805`1f74df74 0f104630        movups  xmm0,xmmword ptr [rsi+30h]
fffff805`1f74df78 f30f7f4750      movdqu  xmmword ptr [rdi+50h],xmm0
fffff805`1f74df7d 0f104e30        movups  xmm1,xmmword ptr [rsi+30h]
fffff805`1f74df81 f30f7f4f60      movdqu  xmmword ptr [rdi+60h],xmm1
fffff805`1f74df86 85db            test    ebx,ebx
fffff805`1f74df88 740e            je      nt!IovpCallDriver1+0x30c (fffff805`1f74df98)  Branch

nt!IovpCallDriver1+0x2fe:
fffff805`1f74df8a 0fba6f041b      bts     dword ptr [rdi+4],1Bh
fffff805`1f74df8f eb07            jmp     nt!IovpCallDriver1+0x30c (fffff805`1f74df98)  Branch

nt!IovpCallDriver1+0x305:
fffff805`1f74df91 8b9c24b0000000  mov     ebx,dword ptr [rsp+0B0h]

nt!IovpCallDriver1+0x30c:
fffff805`1f74df98 498bcd          mov     rcx,r13
fffff805`1f74df9b e854650000      call    nt!IovUtilGetLowerDeviceObjectWithTag (fffff805`1f7544f4)
fffff805`1f74dfa0 4885c0          test    rax,rax
fffff805`1f74dfa3 740f            je      nt!IovpCallDriver1+0x328 (fffff805`1f74dfb4)  Branch

nt!IovpCallDriver1+0x319:
fffff805`1f74dfa5 ba56726649      mov     edx,49667256h
fffff805`1f74dfaa 488bc8          mov     rcx,rax
fffff805`1f74dfad e84e567eff      call    nt!ObfDereferenceObjectWithTag (fffff805`1ef33600)
fffff805`1f74dfb2 eb05            jmp     nt!IovpCallDriver1+0x32d (fffff805`1f74dfb9)  Branch

nt!IovpCallDriver1+0x328:
fffff805`1f74dfb4 0fba6f041c      bts     dword ptr [rdi+4],1Ch

nt!IovpCallDriver1+0x32d:
fffff805`1f74dfb9 410fb617        movzx   edx,byte ptr [r15]
fffff805`1f74dfbd 498b4d08        mov     rcx,qword ptr [r13+8]
fffff805`1f74dfc1 e8360d0000      call    nt!VfGetPristineDispatchRoutine (fffff805`1f74ecfc)
fffff805`1f74dfc6 48894728        mov     qword ptr [rdi+28h],rax
fffff805`1f74dfca 4d8d4620        lea     r8,[r14+20h]
fffff805`1f74dfce 0fba77041e      btr     dword ptr [rdi+4],1Eh
fffff805`1f74dfd3 488d4710        lea     rax,[rdi+10h]
fffff805`1f74dfd7 488b10          mov     rdx,qword ptr [rax]
fffff805`1f74dfda 48394208        cmp     qword ptr [rdx+8],rax
fffff805`1f74dfde 7407            je      nt!IovpCallDriver1+0x35b (fffff805`1f74dfe7)  Branch

nt!IovpCallDriver1+0x354:
fffff805`1f74dfe0 b903000000      mov     ecx,3
fffff805`1f74dfe5 cd29            int     29h

nt!IovpCallDriver1+0x35b:
fffff805`1f74dfe7 498910          mov     qword ptr [r8],rdx
fffff805`1f74dfea 49894008        mov     qword ptr [r8+8],rax
fffff805`1f74dfee 4c894208        mov     qword ptr [rdx+8],r8
fffff805`1f74dff2 4c8900          mov     qword ptr [rax],r8
fffff805`1f74dff5 49897e08        mov     qword ptr [r14+8],rdi
fffff805`1f74dff9 49897648        mov     qword ptr [r14+48h],rsi
fffff805`1f74dffd 488b86b8000000  mov     rax,qword ptr [rsi+0B8h]
fffff805`1f74e004 0f1040b8        movups  xmm0,xmmword ptr [rax-48h]
fffff805`1f74e008 410f114650      movups  xmmword ptr [r14+50h],xmm0
fffff805`1f74e00d 0f1048c8        movups  xmm1,xmmword ptr [rax-38h]
fffff805`1f74e011 410f114e60      movups  xmmword ptr [r14+60h],xmm1
fffff805`1f74e016 0f1040d8        movups  xmm0,xmmword ptr [rax-28h]
fffff805`1f74e01a 410f114670      movups  xmmword ptr [r14+70h],xmm0
fffff805`1f74e01f 0f1048e8        movups  xmm1,xmmword ptr [rax-18h]
fffff805`1f74e023 410f118e80000000 movups  xmmword ptr [r14+80h],xmm1
fffff805`1f74e02b f20f1040f8      movsd   xmm0,mmword ptr [rax-8]
fffff805`1f74e030 f2410f118690000000 movsd mmword ptr [r14+90h],xmm0
fffff805`1f74e039 41f6470301      test    byte ptr [r15+3],1
fffff805`1f74e03e 7406            je      nt!IovpCallDriver1+0x3ba (fffff805`1f74e046)  Branch

nt!IovpCallDriver1+0x3b4:
fffff805`1f74e040 410fba6e1818    bts     dword ptr [r14+18h],18h

nt!IovpCallDriver1+0x3ba:
fffff805`1f74e046 41803f1b        cmp     byte ptr [r15],1Bh
fffff805`1f74e04a 7551            jne     nt!IovpCallDriver1+0x411 (fffff805`1f74e09d)  Branch

nt!IovpCallDriver1+0x3c0:
fffff805`1f74e04c 41807f0102      cmp     byte ptr [r15+1],2
fffff805`1f74e051 754a            jne     nt!IovpCallDriver1+0x411 (fffff805`1f74e09d)  Branch

nt!IovpCallDriver1+0x3c7:
fffff805`1f74e053 410fba6e181d    bts     dword ptr [r14+18h],1Dh
fffff805`1f74e059 498bcd          mov     rcx,r13
fffff805`1f74e05c e82f640000      call    nt!IovUtilGetBottomDeviceObjectWithTag (fffff805`1f754490)
fffff805`1f74e061 ba56726649      mov     edx,49667256h
fffff805`1f74e066 49894640        mov     qword ptr [r14+40h],rax
fffff805`1f74e06a 488bc8          mov     rcx,rax
fffff805`1f74e06d e88e557eff      call    nt!ObfDereferenceObjectWithTag (fffff805`1ef33600)
fffff805`1f74e072 498bcd          mov     rcx,r13
fffff805`1f74e075 e87a650000      call    nt!IovUtilIsInFdoStack (fffff805`1f7545f4)
fffff805`1f74e07a 85c0            test    eax,eax
fffff805`1f74e07c 7417            je      nt!IovpCallDriver1+0x409 (fffff805`1f74e095)  Branch

nt!IovpCallDriver1+0x3f2:
fffff805`1f74e07e ba03000000      mov     edx,3
fffff805`1f74e083 498bcd          mov     rcx,r13
fffff805`1f74e086 e815650000      call    nt!IovUtilIsDeviceObjectMarked (fffff805`1f7545a0)
fffff805`1f74e08b 85c0            test    eax,eax
fffff805`1f74e08d 7506            jne     nt!IovpCallDriver1+0x409 (fffff805`1f74e095)  Branch

nt!IovpCallDriver1+0x403:
fffff805`1f74e08f 410fba6e181c    bts     dword ptr [r14+18h],1Ch

nt!IovpCallDriver1+0x409:
fffff805`1f74e095 498bcd          mov     rcx,r13
fffff805`1f74e098 e8974f0000      call    nt!VfDevObjMarkDeviceRemoved (fffff805`1f753034)

nt!IovpCallDriver1+0x411:
fffff805`1f74e09d 85db            test    ebx,ebx
fffff805`1f74e09f 488b9c24c8000000 mov     rbx,qword ptr [rsp+0C8h]
fffff805`1f74e0a7 7416            je      nt!IovpCallDriver1+0x433 (fffff805`1f74e0bf)  Branch

nt!IovpCallDriver1+0x41d:
fffff805`1f74e0a9 4c8bcf          mov     r9,rdi
fffff805`1f74e0ac 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff805`1f74e0b1 4d8bc7          mov     r8,r15
fffff805`1f74e0b4 488bd6          mov     rdx,rsi
fffff805`1f74e0b7 488bcd          mov     rcx,rbp
fffff805`1f74e0ba e8796d0000      call    nt!VfMajorVerifyNewIrp (fffff805`1f754e38)

nt!IovpCallDriver1+0x433:
fffff805`1f74e0bf 83bc24b800000000 cmp     dword ptr [rsp+0B8h],0
fffff805`1f74e0c7 742b            je      nt!IovpCallDriver1+0x468 (fffff805`1f74e0f4)  Branch

nt!IovpCallDriver1+0x43d:
fffff805`1f74e0c9 f7453800000800  test    dword ptr [rbp+38h],80000h
fffff805`1f74e0d0 7522            jne     nt!IovpCallDriver1+0x468 (fffff805`1f74e0f4)  Branch

nt!IovpCallDriver1+0x446:
fffff805`1f74e0d2 48895c2428      mov     qword ptr [rsp+28h],rbx
fffff805`1f74e0d7 4d8bcf          mov     r9,r15
fffff805`1f74e0da 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff805`1f74e0df 498bd5          mov     rdx,r13
fffff805`1f74e0e2 4c8bc3          mov     r8,rbx
fffff805`1f74e0e5 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff805`1f74e0ea 488bcd          mov     rcx,rbp
fffff805`1f74e0ed e8f66d0000      call    nt!VfMajorVerifyNewRequest (fffff805`1f754ee8)
fffff805`1f74e0f2 eb05            jmp     nt!IovpCallDriver1+0x46d (fffff805`1f74e0f9)  Branch

nt!IovpCallDriver1+0x468:
fffff805`1f74e0f4 488b5c2440      mov     rbx,qword ptr [rsp+40h]

nt!IovpCallDriver1+0x46d:
fffff805`1f74e0f9 488b8424c8000000 mov     rax,qword ptr [rsp+0C8h]
fffff805`1f74e101 4d8bcf          mov     r9,r15
fffff805`1f74e104 4889442428      mov     qword ptr [rsp+28h],rax
fffff805`1f74e109 4c8bc3          mov     r8,rbx
fffff805`1f74e10c 498bd5          mov     rdx,r13
fffff805`1f74e10f 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff805`1f74e114 488bcd          mov     rcx,rbp
fffff805`1f74e117 e88c6b0000      call    nt!VfMajorVerifyIrpStackDownward (fffff805`1f754ca8)
fffff805`1f74e11c 4d896c2430      mov     qword ptr [r12+30h],r13
fffff805`1f74e121 8a4643          mov     al,byte ptr [rsi+43h]
fffff805`1f74e124 8885ba000000    mov     byte ptr [rbp+0BAh],al
fffff805`1f74e12a 488b4708        mov     rax,qword ptr [rdi+8]
fffff805`1f74e12e 0f104630        movups  xmm0,xmmword ptr [rsi+30h]
fffff805`1f74e132 f30f7f4060      movdqu  xmmword ptr [rax+60h],xmm0
fffff805`1f74e137 8a4643          mov     al,byte ptr [rsi+43h]
fffff805`1f74e13a 3c02            cmp     al,2
fffff805`1f74e13c 7e23            jle     nt!IovpCallDriver1+0x4d5 (fffff805`1f74e161)  Branch

nt!IovpCallDriver1+0x4b2:
fffff805`1f74e13e 488386b8000000b8 add     qword ptr [rsi+0B8h],0FFFFFFFFFFFFFFB8h
fffff805`1f74e146 fec8            dec     al
fffff805`1f74e148 884643          mov     byte ptr [rsi+43h],al
fffff805`1f74e14b 488b86b8000000  mov     rax,qword ptr [rsi+0B8h]
fffff805`1f74e152 8048bb10        or      byte ptr [rax-45h],10h
fffff805`1f74e156 fe4643          inc     byte ptr [rsi+43h]
fffff805`1f74e159 488386b800000048 add     qword ptr [rsi+0B8h],48h

nt!IovpCallDriver1+0x4d5:
fffff805`1f74e161 498bcc          mov     rcx,r12
fffff805`1f74e164 e86f020100      call    nt!IovpSessionDataReference (fffff805`1f75e3d8)
fffff805`1f74e169 f0ff4514        lock inc dword ptr [rbp+14h]
fffff805`1f74e16d 8b050df5adff    mov     eax,dword ptr [nt!VfWdCancelTimeoutTicks (fffff805`1f22d680)]
fffff805`1f74e173 498b5630        mov     rdx,qword ptr [r14+30h]
fffff805`1f74e177 85c0            test    eax,eax
fffff805`1f74e179 740f            je      nt!IovpCallDriver1+0x4fe (fffff805`1f74e18a)  Branch

nt!IovpCallDriver1+0x4ef:
fffff805`1f74e17b 4c8d85f8000000  lea     r8,[rbp+0F8h]
fffff805`1f74e182 488bce          mov     rcx,rsi
fffff805`1f74e185 e816f60000      call    nt!ViWdBeforeCallDriver (fffff805`1f75d7a0)

nt!IovpCallDriver1+0x4fe:
fffff805`1f74e18a 488bcd          mov     rcx,rbp
fffff805`1f74e18d e812f20000      call    nt!VfIrpDatabaseEntryReleaseLock (fffff805`1f75d3a4)
fffff805`1f74e192 488b442450      mov     rax,qword ptr [rsp+50h]
fffff805`1f74e197 4885c0          test    rax,rax
fffff805`1f74e19a 7408            je      nt!IovpCallDriver1+0x518 (fffff805`1f74e1a4)  Branch

nt!IovpCallDriver1+0x510:
fffff805`1f74e19c 488bc8          mov     rcx,rax
fffff805`1f74e19f e898450000      call    nt!VfPendingFinishLogging (fffff805`1f75273c)

nt!IovpCallDriver1+0x518:
fffff805`1f74e1a4 4883c468        add     rsp,68h
fffff805`1f74e1a8 415f            pop     r15
fffff805`1f74e1aa 415e            pop     r14
fffff805`1f74e1ac 415d            pop     r13
fffff805`1f74e1ae 415c            pop     r12
fffff805`1f74e1b0 5f              pop     rdi
fffff805`1f74e1b1 5e              pop     rsi
fffff805`1f74e1b2 5d              pop     rbp
fffff805`1f74e1b3 5b              pop     rbx
fffff805`1f74e1b4 c3              ret
