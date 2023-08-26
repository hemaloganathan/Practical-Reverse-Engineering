kd> uf CmpDoSort
nt!CmpDoSort:
fffff801`475e01fc 48895c2408      mov     qword ptr [rsp+8],rbx
fffff801`475e0201 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff801`475e0206 4889742420      mov     qword ptr [rsp+20h],rsi
fffff801`475e020b 57              push    rdi
fffff801`475e020c 4154            push    r12
fffff801`475e020e 4155            push    r13
fffff801`475e0210 4156            push    r14
fffff801`475e0212 4157            push    r15
fffff801`475e0214 4883ec30        sub     rsp,30h
fffff801`475e0218 4c8bda          mov     r11,rdx
fffff801`475e021b 488bf1          mov     rsi,rcx
fffff801`475e021e e819010000      call    nt!CmpSortByTag (fffff801`475e033c)
fffff801`475e0223 33d2            xor     edx,edx
fffff801`475e0225 84c0            test    al,al
fffff801`475e0227 0f8404010000    je      nt!CmpDoSort+0x135 (fffff801`475e0331)  Branch

nt!CmpDoSort+0x31:
fffff801`475e022d 4d8b7b08        mov     r15,qword ptr [r11+8]
fffff801`475e0231 8bea            mov     ebp,edx
fffff801`475e0233 410fb703        movzx   eax,word ptr [r11]
fffff801`475e0237 4c8be6          mov     r12,rsi
fffff801`475e023a 48d1e8          shr     rax,1
fffff801`475e023d 498d5ffe        lea     rbx,[r15-2]
fffff801`475e0241 488d1c43        lea     rbx,[rbx+rax*2]

nt!CmpDoSort+0x49:
fffff801`475e0245 493bdf          cmp     rbx,r15
fffff801`475e0248 0f86c4000000    jbe     nt!CmpDoSort+0x116 (fffff801`475e0312)  Branch

nt!CmpDoSort+0x52:
fffff801`475e024e 663913          cmp     word ptr [rbx],dx
fffff801`475e0251 488bc3          mov     rax,rbx
fffff801`475e0254 480f45c5        cmovne  rax,rbp
fffff801`475e0258 4883c3fe        add     rbx,0FFFFFFFFFFFFFFFEh
fffff801`475e025c 488be8          mov     rbp,rax
fffff801`475e025f 0fb7cb          movzx   ecx,bx
fffff801`475e0262 493bdf          cmp     rbx,r15
fffff801`475e0265 7406            je      nt!CmpDoSort+0x71 (fffff801`475e026d)  Branch

nt!CmpDoSort+0x6b:
fffff801`475e0267 663953fe        cmp     word ptr [rbx-2],dx
fffff801`475e026b 75e1            jne     nt!CmpDoSort+0x52 (fffff801`475e024e)  Branch

nt!CmpDoSort+0x71:
fffff801`475e026d 488b7e08        mov     rdi,qword ptr [rsi+8]
fffff801`475e0271 662bc1          sub     ax,cx
fffff801`475e0274 6689442420      mov     word ptr [rsp+20h],ax
fffff801`475e0279 6689442422      mov     word ptr [rsp+22h],ax
fffff801`475e027e 48895c2428      mov     qword ptr [rsp+28h],rbx
fffff801`475e0283 eb46            jmp     nt!CmpDoSort+0xcf (fffff801`475e02cb)  Branch

nt!CmpDoSort+0x89:
fffff801`475e0285 498b06          mov     rax,qword ptr [r14]
fffff801`475e0288 4c397008        cmp     qword ptr [rax+8],r14
fffff801`475e028c 0f854c100200    jne     nt!CmpDoSort+0x210e2 (fffff801`476012de)  Branch

nt!CmpDoSort+0x96:
fffff801`475e0292 4c3937          cmp     qword ptr [rdi],r14
fffff801`475e0295 0f8543100200    jne     nt!CmpDoSort+0x210e2 (fffff801`476012de)  Branch

nt!CmpDoSort+0x9f:
fffff801`475e029b 488907          mov     qword ptr [rdi],rax
fffff801`475e029e 48897808        mov     qword ptr [rax+8],rdi
fffff801`475e02a2 488b06          mov     rax,qword ptr [rsi]
fffff801`475e02a5 48397008        cmp     qword ptr [rax+8],rsi
fffff801`475e02a9 0f852f100200    jne     nt!CmpDoSort+0x210e2 (fffff801`476012de)  Branch

nt!CmpDoSort+0xb3:
fffff801`475e02af 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff801`475e02b4 4c3be6          cmp     r12,rsi
fffff801`475e02b7 498906          mov     qword ptr [r14],rax
fffff801`475e02ba 4d0f45ec        cmovne  r13,r12
fffff801`475e02be 4d8be5          mov     r12,r13
fffff801`475e02c1 488931          mov     qword ptr [rcx],rsi
fffff801`475e02c4 4c897008        mov     qword ptr [rax+8],r14
fffff801`475e02c8 4c8936          mov     qword ptr [rsi],r14

nt!CmpDoSort+0xcf:
fffff801`475e02cb 493bfc          cmp     rdi,r12
fffff801`475e02ce 7439            je      nt!CmpDoSort+0x10d (fffff801`475e0309)  Branch

nt!CmpDoSort+0xd4:
fffff801`475e02d0 4c8bef          mov     r13,rdi
fffff801`475e02d3 483bfe          cmp     rdi,rsi
fffff801`475e02d6 7431            je      nt!CmpDoSort+0x10d (fffff801`475e0309)  Branch

nt!CmpDoSort+0xdc:
fffff801`475e02d8 4c8bf7          mov     r14,rdi
fffff801`475e02db 488d4708        lea     rax,[rdi+8]
fffff801`475e02df 488b38          mov     rdi,qword ptr [rax]
fffff801`475e02e2 4889442470      mov     qword ptr [rsp+70h],rax
fffff801`475e02e7 49395670        cmp     qword ptr [r14+70h],rdx
fffff801`475e02eb 74de            je      nt!CmpDoSort+0xcf (fffff801`475e02cb)  Branch

nt!CmpDoSort+0xf1:
fffff801`475e02ed 498d5668        lea     rdx,[r14+68h]
fffff801`475e02f1 41b001          mov     r8b,1
fffff801`475e02f4 488d4c2420      lea     rcx,[rsp+20h]
fffff801`475e02f9 e842c2c0ff      call    nt!RtlEqualUnicodeString (fffff801`471ec540)
fffff801`475e02fe 33d2            xor     edx,edx
fffff801`475e0300 84c0            test    al,al
fffff801`475e0302 74c7            je      nt!CmpDoSort+0xcf (fffff801`475e02cb)  Branch

nt!CmpDoSort+0x108:
fffff801`475e0304 e97cffffff      jmp     nt!CmpDoSort+0x89 (fffff801`475e0285)  Branch

nt!CmpDoSort+0x10d:
fffff801`475e0309 4883eb02        sub     rbx,2
fffff801`475e030d e933ffffff      jmp     nt!CmpDoSort+0x49 (fffff801`475e0245)  Branch

nt!CmpDoSort+0x116:
fffff801`475e0312 b001            mov     al,1

nt!CmpDoSort+0x118:
fffff801`475e0314 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff801`475e0319 488b6c2468      mov     rbp,qword ptr [rsp+68h]
fffff801`475e031e 488b742478      mov     rsi,qword ptr [rsp+78h]
fffff801`475e0323 4883c430        add     rsp,30h
fffff801`475e0327 415f            pop     r15
fffff801`475e0329 415e            pop     r14
fffff801`475e032b 415d            pop     r13
fffff801`475e032d 415c            pop     r12
fffff801`475e032f 5f              pop     rdi
fffff801`475e0330 c3              ret

nt!CmpDoSort+0x135:
fffff801`475e0331 32c0            xor     al,al
fffff801`475e0333 ebdf            jmp     nt!CmpDoSort+0x118 (fffff801`475e0314)  Branch

nt!CmpDoSort+0x210e2:
fffff801`476012de b903000000      mov     ecx,3
fffff801`476012e3 cd29            int     29h
fffff801`476012e5 cc              int     3
fffff801`476012e6 458bef          mov     r13d,r15d
fffff801`476012e9 e9e3f1fdff      jmp     nt!CmSelectQualifiedInstallLanguage+0xf5 (fffff801`475e04d1)  Branch

nt!CmSelectQualifiedInstallLanguage+0xf5:
fffff801`475e04d1 4c8d0578fe0000  lea     r8,[nt! ?? ::PBOPGDP::`string' (fffff801`475f0350)]
fffff801`475e04d8 8bd6            mov     edx,esi
fffff801`475e04da 488d0dcffa0300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e04e1 e87a40d5ff      call    nt!CmpWalkPath (fffff801`47334560)
fffff801`475e04e6 8bd0            mov     edx,eax
fffff801`475e04e8 83f8ff          cmp     eax,0FFFFFFFFh
fffff801`475e04eb 7466            je      nt!CmSelectQualifiedInstallLanguage+0x177 (fffff801`475e0553)  Branch

nt!CmSelectQualifiedInstallLanguage+0x111:
fffff801`475e04ed 488b05c4fa0300  mov     rax,qword ptr [nt!CmControlHive+0x8 (fffff801`4761ffb8)]
fffff801`475e04f4 4c8d442470      lea     r8,[rsp+70h]
fffff801`475e04f9 488d0db0fa0300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e0500 e8bbc87eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e0505 488bf8          mov     rdi,rax
fffff801`475e0508 4885c0          test    rax,rax
fffff801`475e050b 7446            je      nt!CmSelectQualifiedInstallLanguage+0x177 (fffff801`475e0553)  Branch

nt!CmSelectQualifiedInstallLanguage+0x131:
fffff801`475e050d 488d155cfe0000  lea     rdx,[nt! ?? ::PBOPGDP::`string' (fffff801`475f0370)]
fffff801`475e0514 488d4d90        lea     rcx,[rbp-70h]
fffff801`475e0518 e853ab6eff      call    nt!RtlInitUnicodeString (fffff801`46ccb070)
fffff801`475e051d 4c8d4590        lea     r8,[rbp-70h]
fffff801`475e0521 488bd7          mov     rdx,rdi
fffff801`475e0524 488d0d85fa0300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e052b e8f841d5ff      call    nt!CmpFindValueByName (fffff801`47334728)
fffff801`475e0530 8bf8            mov     edi,eax
fffff801`475e0532 83f8ff          cmp     eax,0FFFFFFFFh
fffff801`475e0535 0f85bd0d0200    jne     nt!CmSelectQualifiedInstallLanguage+0x20f1c (fffff801`476012f8)  Branch

nt!CmSelectQualifiedInstallLanguage+0x15f:
fffff801`475e053b 488b057efa0300  mov     rax,qword ptr [nt!CmControlHive+0x10 (fffff801`4761ffc0)]
fffff801`475e0542 488d542470      lea     rdx,[rsp+70h]
fffff801`475e0547 488d0d62fa0300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e054e e86dc87eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)

nt!CmSelectQualifiedInstallLanguage+0x177:
fffff801`475e0553 4c8d0546fe0000  lea     r8,[nt! ?? ::PBOPGDP::`string' (fffff801`475f03a0)]
fffff801`475e055a 8bd6            mov     edx,esi
fffff801`475e055c 488d0d4dfa0300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e0563 e8f83fd5ff      call    nt!CmpWalkPath (fffff801`47334560)
fffff801`475e0568 8bd0            mov     edx,eax
fffff801`475e056a 83f8ff          cmp     eax,0FFFFFFFFh
fffff801`475e056d 0f848a000000    je      nt!CmSelectQualifiedInstallLanguage+0x221 (fffff801`475e05fd)  Branch

nt!CmSelectQualifiedInstallLanguage+0x197:
fffff801`475e0573 488b053efa0300  mov     rax,qword ptr [nt!CmControlHive+0x8 (fffff801`4761ffb8)]
fffff801`475e057a 4c8d4580        lea     r8,[rbp-80h]
fffff801`475e057e 488d0d2bfa0300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e0585 e836c87eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e058a 4889442438      mov     qword ptr [rsp+38h],rax
fffff801`475e058f 4885c0          test    rax,rax
fffff801`475e0592 7469            je      nt!CmSelectQualifiedInstallLanguage+0x221 (fffff801`475e05fd)  Branch

nt!CmSelectQualifiedInstallLanguage+0x1b8:
fffff801`475e0594 83e3fd          and     ebx,0FFFFFFFDh
fffff801`475e0597 bf01000000      mov     edi,1

nt!CmSelectQualifiedInstallLanguage+0x1c0:
fffff801`475e059c 33f6            xor     esi,esi

nt!CmSelectQualifiedInstallLanguage+0x1c2:
fffff801`475e059e 4c8d4c2460      lea     r9,[rsp+60h]
fffff801`475e05a3 458bc7          mov     r8d,r15d
fffff801`475e05a6 488bd0          mov     rdx,rax
fffff801`475e05a9 488d0d00fa0300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e05b0 e87f57c7ff      call    nt!CmpFindSubKeyByNumber (fffff801`47255d34)
fffff801`475e05b5 8b542460        mov     edx,dword ptr [rsp+60h]
fffff801`475e05b9 488d0df0f90300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e05c0 4403ff          add     r15d,edi
fffff801`475e05c3 44897c2434      mov     dword ptr [rsp+34h],r15d
fffff801`475e05c8 83faff          cmp     edx,0FFFFFFFFh
fffff801`475e05cb 755c            jne     nt!CmSelectQualifiedInstallLanguage+0x24d (fffff801`475e0629)  Branch

nt!CmSelectQualifiedInstallLanguage+0x1f1:
fffff801`475e05cd 488b05ecf90300  mov     rax,qword ptr [nt!CmControlHive+0x10 (fffff801`4761ffc0)]
fffff801`475e05d4 488d5580        lea     rdx,[rbp-80h]
fffff801`475e05d8 e8e3c77eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e05dd 4584f6          test    r14b,r14b
fffff801`475e05e0 0f84450e0200    je      nt!CmSelectQualifiedInstallLanguage+0x2104f (fffff801`4760142b)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20a:
fffff801`475e05e6 83e3fb          and     ebx,0FFFFFFFBh

nt!CmSelectQualifiedInstallLanguage+0x20d:
fffff801`475e05e9 807c243100      cmp     byte ptr [rsp+31h],0
fffff801`475e05ee 0f84450e0200    je      nt!CmSelectQualifiedInstallLanguage+0x2105d (fffff801`47601439)  Branch

nt!CmSelectQualifiedInstallLanguage+0x218:
fffff801`475e05f4 488b4588        mov     rax,qword ptr [rbp-78h]
fffff801`475e05f8 448928          mov     dword ptr [rax],r13d

nt!CmSelectQualifiedInstallLanguage+0x21f:
fffff801`475e05fb 8bde            mov     ebx,esi

nt!CmSelectQualifiedInstallLanguage+0x221:
fffff801`475e05fd 8bc3            mov     eax,ebx
fffff801`475e05ff 488b8db0010000  mov     rcx,qword ptr [rbp+1B0h]
fffff801`475e0606 4833cc          xor     rcx,rsp
fffff801`475e0609 e842ed7bff      call    nt!_security_check_cookie (fffff801`46d9f350)
fffff801`475e060e 488b9c2400030000 mov     rbx,qword ptr [rsp+300h]
fffff801`475e0616 4881c4c0020000  add     rsp,2C0h
fffff801`475e061d 415f            pop     r15
fffff801`475e061f 415e            pop     r14
fffff801`475e0621 415d            pop     r13
fffff801`475e0623 415c            pop     r12
fffff801`475e0625 5f              pop     rdi
fffff801`475e0626 5e              pop     rsi
fffff801`475e0627 5d              pop     rbp
fffff801`475e0628 c3              ret

nt!CmSelectQualifiedInstallLanguage+0x24d:
fffff801`475e0629 488b0588f90300  mov     rax,qword ptr [nt!CmControlHive+0x8 (fffff801`4761ffb8)]
fffff801`475e0630 4c8d442450      lea     r8,[rsp+50h]
fffff801`475e0635 e886c77eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e063a 4c8bf0          mov     r14,rax
fffff801`475e063d 4885c0          test    rax,rax
fffff801`475e0640 488b442438      mov     rax,qword ptr [rsp+38h]
fffff801`475e0645 0f845e0d0200    je      nt!CmSelectQualifiedInstallLanguage+0x20fcd (fffff801`476013a9)  Branch

nt!CmSelectQualifiedInstallLanguage+0x26f:
fffff801`475e064b 488d156efd0000  lea     rdx,[nt! ?? ::PBOPGDP::`string' (fffff801`475f03c0)]
fffff801`475e0652 488d4d90        lea     rcx,[rbp-70h]
fffff801`475e0656 e815aa6eff      call    nt!RtlInitUnicodeString (fffff801`46ccb070)
fffff801`475e065b 4c8d4590        lea     r8,[rbp-70h]
fffff801`475e065f 498bd6          mov     rdx,r14
fffff801`475e0662 488d0d47f90300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e0669 e8ba40d5ff      call    nt!CmpFindValueByName (fffff801`47334728)
fffff801`475e066e 448bf8          mov     r15d,eax
fffff801`475e0671 83f8ff          cmp     eax,0FFFFFFFFh
fffff801`475e0674 0f84850d0200    je      nt!CmSelectQualifiedInstallLanguage+0x21023 (fffff801`476013ff)  Branch

nt!CmSelectQualifiedInstallLanguage+0x29e:
fffff801`475e067a 488b0537f90300  mov     rax,qword ptr [nt!CmControlHive+0x8 (fffff801`4761ffb8)]
fffff801`475e0681 4c8d442458      lea     r8,[rsp+58h]
fffff801`475e0686 418bd7          mov     edx,r15d
fffff801`475e0689 488d0d20f90300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e0690 e82bc77eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e0695 4885c0          test    rax,rax
fffff801`475e0698 0f84610d0200    je      nt!CmSelectQualifiedInstallLanguage+0x21023 (fffff801`476013ff)  Branch

nt!CmSelectQualifiedInstallLanguage+0x2c2:
fffff801`475e069e 83780c04        cmp     dword ptr [rax+0Ch],4
fffff801`475e06a2 7547            jne     nt!CmSelectQualifiedInstallLanguage+0x30f (fffff801`475e06eb)  Branch

nt!CmSelectQualifiedInstallLanguage+0x2c8:
fffff801`475e06a4 488d4c2478      lea     rcx,[rsp+78h]
fffff801`475e06a9 4c8bc0          mov     r8,rax
fffff801`475e06ac 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff801`475e06b1 4c8d4c2440      lea     r9,[rsp+40h]
fffff801`475e06b6 488d0df3f80300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e06bd 418bd7          mov     edx,r15d
fffff801`475e06c0 e89340d5ff      call    nt!CmpValueToData (fffff801`47334758)
fffff801`475e06c5 8b00            mov     eax,dword ptr [rax]
fffff801`475e06c7 89442444        mov     dword ptr [rsp+44h],eax
fffff801`475e06cb a803            test    al,3
fffff801`475e06cd 0f85e00c0200    jne     nt!CmSelectQualifiedInstallLanguage+0x20fd7 (fffff801`476013b3)  Branch

nt!CmSelectQualifiedInstallLanguage+0x2f7:
fffff801`475e06d3 488b05e6f80300  mov     rax,qword ptr [nt!CmControlHive+0x10 (fffff801`4761ffc0)]
fffff801`475e06da 488d542478      lea     rdx,[rsp+78h]
fffff801`475e06df 488d0dcaf80300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e06e6 e8d5c67eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)

nt!CmSelectQualifiedInstallLanguage+0x30f:
fffff801`475e06eb 488b05cef80300  mov     rax,qword ptr [nt!CmControlHive+0x10 (fffff801`4761ffc0)]
fffff801`475e06f2 488d542458      lea     rdx,[rsp+58h]
fffff801`475e06f7 488d0db2f80300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e06fe e8bdc67eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e0703 4533ff          xor     r15d,r15d
fffff801`475e0706 4084f6          test    sil,sil
fffff801`475e0709 0f84f00c0200    je      nt!CmSelectQualifiedInstallLanguage+0x21023 (fffff801`476013ff)  Branch

nt!CmSelectQualifiedInstallLanguage+0x333:
fffff801`475e070f 41f6460220      test    byte ptr [r14+2],20h
fffff801`475e0714 410fb74e48      movzx   ecx,word ptr [r14+48h]
fffff801`475e0719 0f84a20c0200    je      nt!CmSelectQualifiedInstallLanguage+0x20fe5 (fffff801`476013c1)  Branch

nt!CmSelectQualifiedInstallLanguage+0x343:
fffff801`475e071f 0fb7c1          movzx   eax,cx
fffff801`475e0722 6603c0          add     ax,ax
fffff801`475e0725 0fb7f0          movzx   esi,ax
fffff801`475e0728 81fea8000000    cmp     esi,0A8h
fffff801`475e072e 0f87cb0c0200    ja      nt!CmSelectQualifiedInstallLanguage+0x21023 (fffff801`476013ff)  Branch

nt!CmSelectQualifiedInstallLanguage+0x358:
fffff801`475e0734 440fb7c9        movzx   r9d,cx
fffff801`475e0738 4d8d464c        lea     r8,[r14+4Ch]
fffff801`475e073c 488d4da0        lea     rcx,[rbp-60h]
fffff801`475e0740 8bd6            mov     edx,esi
fffff801`475e0742 e89915c2ff      call    nt!CmpCopyCompressedName (fffff801`47201ce0)

nt!CmSelectQualifiedInstallLanguage+0x36b:
fffff801`475e0747 488b0572f80300  mov     rax,qword ptr [nt!CmControlHive+0x10 (fffff801`4761ffc0)]
fffff801`475e074e 488d542450      lea     rdx,[rsp+50h]
fffff801`475e0753 488d0d56f80300  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`475e075a e861c67eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e075f 8bc6            mov     eax,esi
fffff801`475e0761 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff801`475e0765 483daa000000    cmp     rax,0AAh
fffff801`475e076b 0f839d000000    jae     nt!CmSelectQualifiedInstallLanguage+0x432 (fffff801`475e080e)  Branch

nt!CmSelectQualifiedInstallLanguage+0x395:
fffff801`475e0771 33d2            xor     edx,edx
fffff801`475e0773 6644897c05a0    mov     word ptr [rbp+rax-60h],r15w
fffff801`475e0779 488d4da0        lea     rcx,[rbp-60h]
fffff801`475e077d e8ceed7aff      call    nt!DownLevelLanguageNameToLangID (fffff801`46d8f550)
fffff801`475e0782 448b7c2434      mov     r15d,dword ptr [rsp+34h]
fffff801`475e0787 448a742430      mov     r14b,byte ptr [rsp+30h]
fffff801`475e078c 0fb7f0          movzx   esi,ax
fffff801`475e078f 488b442438      mov     rax,qword ptr [rsp+38h]
fffff801`475e0794 85f6            test    esi,esi
fffff801`475e0796 0f8400feffff    je      nt!CmSelectQualifiedInstallLanguage+0x1c0 (fffff801`475e059c)  Branch

nt!CmSelectQualifiedInstallLanguage+0x3c0:
fffff801`475e079c 83fe7f          cmp     esi,7Fh
fffff801`475e079f 0f84f7fdffff    je      nt!CmSelectQualifiedInstallLanguage+0x1c0 (fffff801`475e059c)  Branch

nt!CmSelectQualifiedInstallLanguage+0x3c9:
fffff801`475e07a5 4533ff          xor     r15d,r15d
fffff801`475e07a8 4585ed          test    r13d,r13d
fffff801`475e07ab 7423            je      nt!CmSelectQualifiedInstallLanguage+0x3f4 (fffff801`475e07d0)  Branch

nt!CmSelectQualifiedInstallLanguage+0x3d1:
fffff801`475e07ad 44387c2431      cmp     byte ptr [rsp+31h],r15b
fffff801`475e07b2 751c            jne     nt!CmSelectQualifiedInstallLanguage+0x3f4 (fffff801`475e07d0)  Branch

nt!CmSelectQualifiedInstallLanguage+0x3d8:
fffff801`475e07b4 488d55a0        lea     rdx,[rbp-60h]
fffff801`475e07b8 488d8d00010000  lea     rcx,[rbp+100h]
fffff801`475e07bf e8ac047cff      call    nt!wcsicmp (fffff801`46da0c70)
fffff801`475e07c4 85c0            test    eax,eax
fffff801`475e07c6 7508            jne     nt!CmSelectQualifiedInstallLanguage+0x3f4 (fffff801`475e07d0)  Branch

nt!CmSelectQualifiedInstallLanguage+0x3ec:
fffff801`475e07c8 40887c2431      mov     byte ptr [rsp+31h],dil
fffff801`475e07cd 83e3bf          and     ebx,0FFFFFFBFh

nt!CmSelectQualifiedInstallLanguage+0x3f4:
fffff801`475e07d0 448a742430      mov     r14b,byte ptr [rsp+30h]
fffff801`475e07d5 448b7c2434      mov     r15d,dword ptr [rsp+34h]
fffff801`475e07da 488b442438      mov     rax,qword ptr [rsp+38h]
fffff801`475e07df 4584f6          test    r14b,r14b
fffff801`475e07e2 0f85fa0b0200    jne     nt!CmSelectQualifiedInstallLanguage+0x21006 (fffff801`476013e2)  Branch

nt!CmSelectQualifiedInstallLanguage+0x40c:
fffff801`475e07e8 4584e4          test    r12b,r12b
fffff801`475e07eb 0f85abfdffff    jne     nt!CmSelectQualifiedInstallLanguage+0x1c0 (fffff801`475e059c)  Branch

nt!CmSelectQualifiedInstallLanguage+0x415:
fffff801`475e07f1 f644244402      test    byte ptr [rsp+44h],2
fffff801`475e07f6 89742448        mov     dword ptr [rsp+48h],esi
fffff801`475e07fa 750d            jne     nt!CmSelectQualifiedInstallLanguage+0x42d (fffff801`475e0809)  Branch

nt!CmSelectQualifiedInstallLanguage+0x420:
fffff801`475e07fc 448af7          mov     r14b,dil
fffff801`475e07ff 40887c2430      mov     byte ptr [rsp+30h],dil

nt!CmSelectQualifiedInstallLanguage+0x428:
fffff801`475e0804 e993fdffff      jmp     nt!CmSelectQualifiedInstallLanguage+0x1c0 (fffff801`475e059c)  Branch

nt!CmSelectQualifiedInstallLanguage+0x42d:
fffff801`475e0809 448ae7          mov     r12b,dil
fffff801`475e080c ebf6            jmp     nt!CmSelectQualifiedInstallLanguage+0x428 (fffff801`475e0804)  Branch

nt!CmSelectQualifiedInstallLanguage+0x432:
fffff801`475e080e e8e97f89ff      call    nt!_report_rangecheckfailure (fffff801`46e787fc)
fffff801`475e0813 cc              int     3
fffff801`475e0814 cc              int     3
fffff801`475e0815 cc              int     3
fffff801`475e0816 cc              int     3
fffff801`475e0817 cc              int     3
fffff801`475e0818 cc              int     3
fffff801`475e0819 cc              int     3
fffff801`475e081a cc              int     3
fffff801`475e081b cc              int     3
fffff801`475e081c 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff801`475e0821 4889742418      mov     qword ptr [rsp+18h],rsi
fffff801`475e0826 55              push    rbp
fffff801`475e0827 57              push    rdi
fffff801`475e0828 4155            push    r13
fffff801`475e082a 4156            push    r14
fffff801`475e082c 4157            push    r15
fffff801`475e082e 488bec          mov     rbp,rsp
fffff801`475e0831 4881ec80000000  sub     rsp,80h
fffff801`475e0838 33c0            xor     eax,eax
fffff801`475e083a 4183cdff        or      r13d,0FFFFFFFFh
fffff801`475e083e 482145f0        and     qword ptr [rbp-10h],rax
fffff801`475e0842 458bf0          mov     r14d,r8d
fffff801`475e0845 8945ec          mov     dword ptr [rbp-14h],eax
fffff801`475e0848 4c8d45c8        lea     r8,[rbp-38h]
fffff801`475e084c 8945cc          mov     dword ptr [rbp-34h],eax
fffff801`475e084f 4d8bf9          mov     r15,r9
fffff801`475e0852 8945d4          mov     dword ptr [rbp-2Ch],eax
fffff801`475e0855 8bda            mov     ebx,edx
fffff801`475e0857 8945e4          mov     dword ptr [rbp-1Ch],eax
fffff801`475e085a 488bf9          mov     rdi,rcx
fffff801`475e085d 8945dc          mov     dword ptr [rbp-24h],eax
fffff801`475e0860 884530          mov     byte ptr [rbp+30h],al
fffff801`475e0863 488b4108        mov     rax,qword ptr [rcx+8]
fffff801`475e0867 44896de8        mov     dword ptr [rbp-18h],r13d
fffff801`475e086b 44896dc8        mov     dword ptr [rbp-38h],r13d
fffff801`475e086f 44896dd0        mov     dword ptr [rbp-30h],r13d
fffff801`475e0873 44896de0        mov     dword ptr [rbp-20h],r13d
fffff801`475e0877 44896dd8        mov     dword ptr [rbp-28h],r13d
fffff801`475e087b e840c57eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e0880 4885c0          test    rax,rax
fffff801`475e0883 0f84d70b0200    je      nt!CmpFindTagIndex+0x20c44 (fffff801`47601460)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20f1c:
fffff801`476012f8 488b05b9ec0100  mov     rax,qword ptr [nt!CmControlHive+0x8 (fffff801`4761ffb8)]
fffff801`476012ff 4c8d442458      lea     r8,[rsp+58h]
fffff801`47601304 8bd7            mov     edx,edi
fffff801`47601306 488d0da3ec0100  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`4760130d e8aeba7cff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`47601312 4885c0          test    rax,rax
fffff801`47601315 0f8420f2fdff    je      nt!CmSelectQualifiedInstallLanguage+0x15f (fffff801`475e053b)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20f3f:
fffff801`4760131b 83780c07        cmp     dword ptr [rax+0Ch],7
fffff801`4760131f 756a            jne     nt!CmSelectQualifiedInstallLanguage+0x20faf (fffff801`4760138b)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20f45:
fffff801`47601321 488d4c2468      lea     rcx,[rsp+68h]
fffff801`47601326 4c8bc0          mov     r8,rax
fffff801`47601329 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff801`4760132e 4c8d4c2440      lea     r9,[rsp+40h]
fffff801`47601333 488d0d76ec0100  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`4760133a 8bd7            mov     edx,edi
fffff801`4760133c e81734d3ff      call    nt!CmpValueToData (fffff801`47334758)
fffff801`47601341 4885c0          test    rax,rax
fffff801`47601344 7445            je      nt!CmSelectQualifiedInstallLanguage+0x20faf (fffff801`4760138b)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20f6a:
fffff801`47601346 817c2440a8000000 cmp     dword ptr [rsp+40h],0A8h
fffff801`4760134e 7323            jae     nt!CmSelectQualifiedInstallLanguage+0x20f97 (fffff801`47601373)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20f74:
fffff801`47601350 448b442440      mov     r8d,dword ptr [rsp+40h]
fffff801`47601355 488d4d50        lea     rcx,[rbp+50h]
fffff801`47601359 488bd0          mov     rdx,rax
fffff801`4760135c e8df587dff      call    nt!memcpy (fffff801`46dd6c40)
fffff801`47601361 33d2            xor     edx,edx
fffff801`47601363 488d4d50        lea     rcx,[rbp+50h]
fffff801`47601367 e8e4e178ff      call    nt!DownLevelLanguageNameToLangID (fffff801`46d8f550)
fffff801`4760136c 668905a5e1f7ff  mov     word ptr [nt!PsMachineUILanguageId (fffff801`4757f518)],ax

nt!CmSelectQualifiedInstallLanguage+0x20f97:
fffff801`47601373 488b0546ec0100  mov     rax,qword ptr [nt!CmControlHive+0x10 (fffff801`4761ffc0)]
fffff801`4760137a 488d542468      lea     rdx,[rsp+68h]
fffff801`4760137f 488d0d2aec0100  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`47601386 e835ba7cff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)

nt!CmSelectQualifiedInstallLanguage+0x20faf:
fffff801`4760138b 488b052eec0100  mov     rax,qword ptr [nt!CmControlHive+0x10 (fffff801`4761ffc0)]
fffff801`47601392 488d542458      lea     rdx,[rsp+58h]
fffff801`47601397 488d0d12ec0100  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`4760139e e81dba7cff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`476013a3 90              nop
fffff801`476013a4 e992f1fdff      jmp     nt!CmSelectQualifiedInstallLanguage+0x15f (fffff801`475e053b)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20fcd:
fffff801`476013a9 448a742430      mov     r14b,byte ptr [rsp+30h]
fffff801`476013ae e9ebf1fdff      jmp     nt!CmSelectQualifiedInstallLanguage+0x1c2 (fffff801`475e059e)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20fd7:
fffff801`476013b3 a810            test    al,10h
fffff801`476013b5 400fb6f6        movzx   esi,sil
fffff801`476013b9 0f45f7          cmovne  esi,edi
fffff801`476013bc e912f3fdff      jmp     nt!CmSelectQualifiedInstallLanguage+0x2f7 (fffff801`475e06d3)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20fe5:
fffff801`476013c1 0fb7f1          movzx   esi,cx
fffff801`476013c4 81fea8000000    cmp     esi,0A8h
fffff801`476013ca 7733            ja      nt!CmSelectQualifiedInstallLanguage+0x21023 (fffff801`476013ff)  Branch

nt!CmSelectQualifiedInstallLanguage+0x20ff0:
fffff801`476013cc 448bc6          mov     r8d,esi
fffff801`476013cf 498d564c        lea     rdx,[r14+4Ch]
fffff801`476013d3 488d4da0        lea     rcx,[rbp-60h]
fffff801`476013d7 e864587dff      call    nt!memcpy (fffff801`46dd6c40)
fffff801`476013dc 90              nop
fffff801`476013dd e965f3fdff      jmp     nt!CmSelectQualifiedInstallLanguage+0x36b (fffff801`475e0747)  Branch

nt!CmSelectQualifiedInstallLanguage+0x21006:
fffff801`476013e2 4584e4          test    r12b,r12b
fffff801`476013e5 0f85b1f1fdff    jne     nt!CmSelectQualifiedInstallLanguage+0x1c0 (fffff801`475e059c)  Branch

nt!CmSelectQualifiedInstallLanguage+0x2100f:
fffff801`476013eb f644244402      test    byte ptr [rsp+44h],2
fffff801`476013f0 0f84a6f1fdff    je      nt!CmSelectQualifiedInstallLanguage+0x1c0 (fffff801`475e059c)  Branch

nt!CmSelectQualifiedInstallLanguage+0x2101a:
fffff801`476013f6 89742448        mov     dword ptr [rsp+48h],esi
fffff801`476013fa e90af4fdff      jmp     nt!CmSelectQualifiedInstallLanguage+0x42d (fffff801`475e0809)  Branch

nt!CmSelectQualifiedInstallLanguage+0x21023:
fffff801`476013ff 488b05baeb0100  mov     rax,qword ptr [nt!CmControlHive+0x10 (fffff801`4761ffc0)]
fffff801`47601406 488d542450      lea     rdx,[rsp+50h]
fffff801`4760140b 488d0d9eeb0100  lea     rcx,[nt!CmControlHive (fffff801`4761ffb0)]
fffff801`47601412 e8a9b97cff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`47601417 488b442438      mov     rax,qword ptr [rsp+38h]
fffff801`4760141c 448b7c2434      mov     r15d,dword ptr [rsp+34h]
fffff801`47601421 448a742430      mov     r14b,byte ptr [rsp+30h]
fffff801`47601426 e971f1fdff      jmp     nt!CmSelectQualifiedInstallLanguage+0x1c0 (fffff801`475e059c)  Branch

nt!CmSelectQualifiedInstallLanguage+0x2104f:
fffff801`4760142b 4584e4          test    r12b,r12b
fffff801`4760142e 0f84b5f1fdff    je      nt!CmSelectQualifiedInstallLanguage+0x20d (fffff801`475e05e9)  Branch

nt!CmSelectQualifiedInstallLanguage+0x21058:
fffff801`47601434 e9adf1fdff      jmp     nt!CmSelectQualifiedInstallLanguage+0x20a (fffff801`475e05e6)  Branch

nt!CmSelectQualifiedInstallLanguage+0x2105d:
fffff801`47601439 4584e4          test    r12b,r12b
fffff801`4760143c 7509            jne     nt!CmSelectQualifiedInstallLanguage+0x2106b (fffff801`47601447)  Branch

nt!CmSelectQualifiedInstallLanguage+0x21062:
fffff801`4760143e 4584f6          test    r14b,r14b
fffff801`47601441 0f84b6f1fdff    je      nt!CmSelectQualifiedInstallLanguage+0x221 (fffff801`475e05fd)  Branch

nt!CmSelectQualifiedInstallLanguage+0x2106b:
fffff801`47601447 488b4588        mov     rax,qword ptr [rbp-78h]
fffff801`4760144b 8b4c2448        mov     ecx,dword ptr [rsp+48h]
fffff801`4760144f 8908            mov     dword ptr [rax],ecx
fffff801`47601451 e9a5f1fdff      jmp     nt!CmSelectQualifiedInstallLanguage+0x21f (fffff801`475e05fb)  Branch

nt!CmpFindTagIndex+0x6d:
fffff801`475e0889 488d4de8        lea     rcx,[rbp-18h]
fffff801`475e088d 4c8bc0          mov     r8,rax
fffff801`475e0890 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff801`475e0895 4c8d4dc0        lea     r9,[rbp-40h]
fffff801`475e0899 488bcf          mov     rcx,rdi
fffff801`475e089c 8bd3            mov     edx,ebx
fffff801`475e089e e8b53ed5ff      call    nt!CmpValueToData (fffff801`47334758)
fffff801`475e08a3 488bf0          mov     rsi,rax
fffff801`475e08a6 488d55c8        lea     rdx,[rbp-38h]
fffff801`475e08aa 488b4710        mov     rax,qword ptr [rdi+10h]
fffff801`475e08ae 488bcf          mov     rcx,rdi
fffff801`475e08b1 e80ac57eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e08b6 4885f6          test    rsi,rsi
fffff801`475e08b9 0f84a10b0200    je      nt!CmpFindTagIndex+0x20c44 (fffff801`47601460)  Branch

nt!CmpFindTagIndex+0xa3:
fffff801`475e08bf 488b4708        mov     rax,qword ptr [rdi+8]
fffff801`475e08c3 4c8d45d0        lea     r8,[rbp-30h]
fffff801`475e08c7 418bd6          mov     edx,r14d
fffff801`475e08ca 488bcf          mov     rcx,rdi
fffff801`475e08cd e8eec47eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e08d2 4885c0          test    rax,rax
fffff801`475e08d5 0f84ee000000    je      nt!CmpFindTagIndex+0x1ad (fffff801`475e09c9)  Branch

nt!CmpFindTagIndex+0xbf:
fffff801`475e08db 4d8bc7          mov     r8,r15
fffff801`475e08de 488bd0          mov     rdx,rax
fffff801`475e08e1 488bcf          mov     rcx,rdi
fffff801`475e08e4 e83f3ed5ff      call    nt!CmpFindValueByName (fffff801`47334728)
fffff801`475e08e9 8bd8            mov     ebx,eax
fffff801`475e08eb 488d55d0        lea     rdx,[rbp-30h]
fffff801`475e08ef 488b4710        mov     rax,qword ptr [rdi+10h]
fffff801`475e08f3 488bcf          mov     rcx,rdi
fffff801`475e08f6 e8c5c47eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e08fb 413bdd          cmp     ebx,r13d
fffff801`475e08fe 0f84cc000000    je      nt!CmpFindTagIndex+0x1b4 (fffff801`475e09d0)  Branch

nt!CmpFindTagIndex+0xe8:
fffff801`475e0904 488b4708        mov     rax,qword ptr [rdi+8]
fffff801`475e0908 4c8d45d8        lea     r8,[rbp-28h]
fffff801`475e090c 8bd3            mov     edx,ebx
fffff801`475e090e 488bcf          mov     rcx,rdi
fffff801`475e0911 e8aac47eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e0916 4885c0          test    rax,rax
fffff801`475e0919 0f84aa000000    je      nt!CmpFindTagIndex+0x1ad (fffff801`475e09c9)  Branch

nt!CmpFindTagIndex+0x103:
fffff801`475e091f 488d4de0        lea     rcx,[rbp-20h]
fffff801`475e0923 4c8bc0          mov     r8,rax
fffff801`475e0926 48894c2430      mov     qword ptr [rsp+30h],rcx
fffff801`475e092b 4c8d4dc0        lea     r9,[rbp-40h]
fffff801`475e092f 488d4d30        lea     rcx,[rbp+30h]
fffff801`475e0933 8bd3            mov     edx,ebx
fffff801`475e0935 48894c2428      mov     qword ptr [rsp+28h],rcx
fffff801`475e093a 488d4df0        lea     rcx,[rbp-10h]
fffff801`475e093e 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff801`475e0943 488bcf          mov     rcx,rdi
fffff801`475e0946 e8753dc2ff      call    nt!CmpGetValueData (fffff801`472046c0)
fffff801`475e094b 488b4710        mov     rax,qword ptr [rdi+10h]
fffff801`475e094f 488d55d8        lea     rdx,[rbp-28h]
fffff801`475e0953 488bcf          mov     rcx,rdi
fffff801`475e0956 e865c47eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)
fffff801`475e095b 488b4df0        mov     rcx,qword ptr [rbp-10h]
fffff801`475e095f 4885c9          test    rcx,rcx
fffff801`475e0962 7465            je      nt!CmpFindTagIndex+0x1ad (fffff801`475e09c9)  Branch

nt!CmpFindTagIndex+0x148:
fffff801`475e0964 8b11            mov     edx,dword ptr [rcx]
fffff801`475e0966 bb01000000      mov     ebx,1
fffff801`475e096b 3bd3            cmp     edx,ebx
fffff801`475e096d 7211            jb      nt!CmpFindTagIndex+0x164 (fffff801`475e0980)  Branch

nt!CmpFindTagIndex+0x153:
fffff801`475e096f 448b06          mov     r8d,dword ptr [rsi]

nt!CmpFindTagIndex+0x156:
fffff801`475e0972 8bc3            mov     eax,ebx
fffff801`475e0974 44390481        cmp     dword ptr [rcx+rax*4],r8d
fffff801`475e0978 740b            je      nt!CmpFindTagIndex+0x169 (fffff801`475e0985)  Branch

nt!CmpFindTagIndex+0x15e:
fffff801`475e097a ffc3            inc     ebx
fffff801`475e097c 3bda            cmp     ebx,edx
fffff801`475e097e 76f2            jbe     nt!CmpFindTagIndex+0x156 (fffff801`475e0972)  Branch

nt!CmpFindTagIndex+0x164:
fffff801`475e0980 bbfeffffff      mov     ebx,0FFFFFFFEh

nt!CmpFindTagIndex+0x169:
fffff801`475e0985 807d3000        cmp     byte ptr [rbp+30h],0
fffff801`475e0989 7549            jne     nt!CmpFindTagIndex+0x1b8 (fffff801`475e09d4)  Branch

nt!CmpFindTagIndex+0x16f:
fffff801`475e098b 488b4710        mov     rax,qword ptr [rdi+10h]
fffff801`475e098f 488d55e0        lea     rdx,[rbp-20h]
fffff801`475e0993 488bcf          mov     rcx,rdi
fffff801`475e0996 e825c47eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)

nt!CmpFindTagIndex+0x17f:
fffff801`475e099b 488b4710        mov     rax,qword ptr [rdi+10h]
fffff801`475e099f 488d55e8        lea     rdx,[rbp-18h]
fffff801`475e09a3 488bcf          mov     rcx,rdi
fffff801`475e09a6 e815c47eff      call    nt!guard_dispatch_icall (fffff801`46dccdc0)

nt!CmpFindTagIndex+0x18f:
fffff801`475e09ab 4c8d9c2480000000 lea     r11,[rsp+80h]
fffff801`475e09b3 8bc3            mov     eax,ebx
fffff801`475e09b5 498b5b38        mov     rbx,qword ptr [r11+38h]
fffff801`475e09b9 498b7340        mov     rsi,qword ptr [r11+40h]
fffff801`475e09bd 498be3          mov     rsp,r11
fffff801`475e09c0 415f            pop     r15
fffff801`475e09c2 415e            pop     r14
fffff801`475e09c4 415d            pop     r13
fffff801`475e09c6 5f              pop     rdi
fffff801`475e09c7 5d              pop     rbp
fffff801`475e09c8 c3              ret

nt!CmpFindTagIndex+0x1ad:
fffff801`475e09c9 bbfeffffff      mov     ebx,0FFFFFFFEh
fffff801`475e09ce ebcb            jmp     nt!CmpFindTagIndex+0x17f (fffff801`475e099b)  Branch

nt!CmpFindTagIndex+0x1b4:
fffff801`475e09d0 8b1e            mov     ebx,dword ptr [rsi]
fffff801`475e09d2 ebc7            jmp     nt!CmpFindTagIndex+0x17f (fffff801`475e099b)  Branch

nt!CmpFindTagIndex+0x1b8:
fffff801`475e09d4 33d2            xor     edx,edx
fffff801`475e09d6 e8a5b297ff      call    nt!ExFreePoolWithTag (fffff801`46f5bc80)
fffff801`475e09db ebbe            jmp     nt!CmpFindTagIndex+0x17f (fffff801`475e099b)  Branch

nt!CmpFindTagIndex+0x20c44:
fffff801`47601460 bbfeffffff      mov     ebx,0FFFFFFFEh
fffff801`47601465 e941f5fdff      jmp     nt!CmpFindTagIndex+0x18f (fffff801`475e09ab)  Branch
