
lkd> uf CmpDoSort
Flow analysis was incomplete, some code may be missing
nt!CmpDoSort:
fffff801`3f1da1fc 80784100        cmp     byte ptr [rax+41h],0
fffff801`3f1da200 0f8587cbe2ff    jne     nt!CmpAddAcpiAliasEntry+0x239 (fffff801`3f006d8d)

nt!CmpDoSort+0xa:
fffff801`3f1da206 488bca          mov     rcx,rdx
fffff801`3f1da209 e8aac9eeff      call    nt!EtwpLoadMicroarchitecturalProfileGroup+0x1fc (fffff801`3f0c6bb8)
fffff801`3f1da20e 84c0            test    al,al
fffff801`3f1da210 0f8577cbe2ff    jne     nt!CmpAddAcpiAliasEntry+0x239 (fffff801`3f006d8d)

nt!CmpDoSort+0x1a:
fffff801`3f1da216 ba1c040a80      mov     edx,800A041Ch
fffff801`3f1da21b e84c47d9ff      call    nt!_PnpDispatchDeviceInterface+0x1dfe8c (fffff801`3ef6e96c)
fffff801`3f1da220 cc              int     3
fffff801`3f1da221 488bca          mov     rcx,rdx
fffff801`3f1da224 e88fc9eeff      call    nt!EtwpLoadMicroarchitecturalProfileGroup+0x1fc (fffff801`3f0c6bb8)
fffff801`3f1da229 84c0            test    al,al
fffff801`3f1da22b 0f85a9cae2ff    jne     nt!CmpAddAcpiAliasEntry+0x186 (fffff801`3f006cda)  Branch

nt!CmpDoSort+0x35:
fffff801`3f1da231 4180484440      or      byte ptr [r8+44h],40h
fffff801`3f1da236 e99fcae2ff      jmp     nt!CmpAddAcpiAliasEntry+0x186 (fffff801`3f006cda)  Branch

nt!CmpAddAcpiAliasEntry+0x186:
fffff801`3f006cda 4dc0894568e88ce3 ror     byte ptr [r9-731797BBh],0E3h
fffff801`3f006ce2 8bff            mov     edi,edi
fffff801`3f006ce4 488b4d30        mov     rcx,qword ptr [rbp+30h]
fffff801`3f006ce8 488d4568        lea     rax,[rbp+68h]
fffff801`3f006cec bb04000000      mov     ebx,4
fffff801`3f006cf1 488d55c0        lea     rdx,[rbp-40h]
fffff801`3f006cf5 895c2428        mov     dword ptr [rsp+28h],ebx
fffff801`3f006cf9 448bcb          mov     r9d,ebx
fffff801`3f006cfc 4533c0          xor     r8d,r8d
fffff801`3f006cff 4889442420      mov     qword ptr [rsp+20h],rax
fffff801`3f006d04 e8c74a9bff      call    nt!ZwSetValueKey (fffff801`3e9bb7d0)
fffff801`3f006d09 488d1550ccf4ff  lea     rdx,[nt! ?? ::NNGAKEGL::`string' (fffff801`3ef53960)]
fffff801`3f006d10 488d4dc0        lea     rcx,[rbp-40h]
fffff801`3f006d14 e857e38bff      call    nt!RtlInitUnicodeString (fffff801`3e8c5070)
fffff801`3f006d19 410fb74602      movzx   eax,word ptr [r14+2]
fffff801`3f006d1e 498d4e04        lea     rcx,[r14+4]
fffff801`3f006d22 89442428        mov     dword ptr [rsp+28h],eax
fffff801`3f006d26 448d4bff        lea     r9d,[rbx-1]
fffff801`3f006d2a 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff801`3f006d2f 488d55c0        lea     rdx,[rbp-40h]
fffff801`3f006d33 488b4d30        mov     rcx,qword ptr [rbp+30h]
fffff801`3f006d37 4533c0          xor     r8d,r8d
fffff801`3f006d3a e8914a9bff      call    nt!ZwSetValueKey (fffff801`3e9bb7d0)
fffff801`3f006d3f 488d15dacbf4ff  lea     rdx,[nt! ?? ::NNGAKEGL::`string' (fffff801`3ef53920)]
fffff801`3f006d46 44897d68        mov     dword ptr [rbp+68h],r15d
fffff801`3f006d4a 488d4dc0        lea     rcx,[rbp-40h]
fffff801`3f006d4e e81de38bff      call    nt!RtlInitUnicodeString (fffff801`3e8c5070)
fffff801`3f006d53 488b4d30        mov     rcx,qword ptr [rbp+30h]
fffff801`3f006d57 488d4568        lea     rax,[rbp+68h]
fffff801`3f006d5b 895c2428        mov     dword ptr [rsp+28h],ebx
fffff801`3f006d5f 488d55c0        lea     rdx,[rbp-40h]
fffff801`3f006d63 448bcb          mov     r9d,ebx
fffff801`3f006d66 4889442420      mov     qword ptr [rsp+20h],rax
fffff801`3f006d6b 4533c0          xor     r8d,r8d
fffff801`3f006d6e e85d4a9bff      call    nt!ZwSetValueKey (fffff801`3e9bb7d0)
fffff801`3f006d73 8bd8            mov     ebx,eax
fffff801`3f006d75 488b4d58        mov     rcx,qword ptr [rbp+58h]
fffff801`3f006d79 4885c9          test    rcx,rcx
fffff801`3f006d7c 7405            je      nt!CmpAddAcpiAliasEntry+0x22f (fffff801`3f006d83)  Branch

nt!CmpAddAcpiAliasEntry+0x22a:
fffff801`3f006d7e e82d409bff      call    nt!ZwClose (fffff801`3e9badb0)

nt!CmpAddAcpiAliasEntry+0x22f:
fffff801`3f006d83 488b4d30        mov     rcx,qword ptr [rbp+30h]
fffff801`3f006d87 4885c9          test    rcx,rcx
fffff801`3f006d8a 7405            je      nt!CmpAddAcpiAliasEntry+0x23d (fffff801`3f006d91)  Branch

nt!CmpAddAcpiAliasEntry+0x238:
fffff801`3f006d8c e81f409bff      call    nt!ZwClose (fffff801`3e9badb0)

nt!CmpAddAcpiAliasEntry+0x23d:
fffff801`3f006d91 4c8d9c2480000000 lea     r11,[rsp+80h]
fffff801`3f006d99 8bc3            mov     eax,ebx
fffff801`3f006d9b 498b5b38        mov     rbx,qword ptr [r11+38h]
fffff801`3f006d9f 498b7340        mov     rsi,qword ptr [r11+40h]
fffff801`3f006da3 498be3          mov     rsp,r11
fffff801`3f006da6 415f            pop     r15
fffff801`3f006da8 415e            pop     r14
fffff801`3f006daa 415c            pop     r12
fffff801`3f006dac 5f              pop     rdi
fffff801`3f006dad 5d              pop     rbp
fffff801`3f006dae c3              ret
