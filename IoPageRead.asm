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
