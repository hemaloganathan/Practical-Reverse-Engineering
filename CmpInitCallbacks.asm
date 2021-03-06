lkd> uf CmpInitCallbacks
nt!CmpInitCallbacks:
fffff807`2f004b74 4883ec28        sub     rsp,28h
fffff807`2f004b78 33c9            xor     ecx,ecx
fffff807`2f004b7a 488d05df23ceff  lea     rax,[nt!CallbackListHead (fffff807`2ece6f60)]  //Retrieve ListHead
fffff807`2f004b81 890dad68ceff    mov     dword ptr [nt!CmpCallBackCount (fffff807`2eceb434)],ecx
fffff807`2f004b87 488d15ea2dc0ff  lea     rdx,[nt!`string' (fffff807`2ec07978)]
fffff807`2f004b8e 48890dbb23ceff  mov     qword ptr [nt!CmpCallbackListLock (fffff807`2ece6f50)],rcx
fffff807`2f004b95 48890dbc23ceff  mov     qword ptr [nt!CmpContextListLock (fffff807`2ece6f58)],rcx
fffff807`2f004b9c 48890dcd23ceff  mov     qword ptr [nt!CallbackListDeleteEvent (fffff807`2ece6f70)],rcx
fffff807`2f004ba3 488d0da660d8ff  lea     rcx,[nt!CmLegacyAltitude (fffff807`2ed8ac50)]
fffff807`2f004baa 488905b723ceff  mov     qword ptr [nt!CallbackListHead+0x8 (fffff807`2ece6f68)],rax  // BLINK
fffff807`2f004bb1 488905a823ceff  mov     qword ptr [nt!CallbackListHead (fffff807`2ece6f60)],rax // FLINK
fffff807`2f004bb8 e8b30b92ff      call    nt!RtlInitUnicodeString (fffff807`2e925770)
fffff807`2f004bbd 48b81400000080f7ffff mov rax,0FFFFF78000000014h
fffff807`2f004bc7 488b00          mov     rax,qword ptr [rax]
fffff807`2f004bca 488905a723ceff  mov     qword ptr [nt!CmpCallbackCookie (fffff807`2ece6f78)],rax
fffff807`2f004bd1 488d05f80cd7ff  lea     rax,[nt!CmpCallbackContextSList (fffff807`2ed758d0)]  //Retrieve ListHead
fffff807`2f004bd8 a80f            test    al,0Fh
fffff807`2f004bda 0f852e420900    jne     nt!CmpInitCallbacks+0x9429a (fffff807`2f098e0e)  Branch

nt!CmpInitCallbacks+0x6c:
fffff807`2f004be0 33c0            xor     eax,eax
fffff807`2f004be2 488905e70cd7ff  mov     qword ptr [nt!CmpCallbackContextSList (fffff807`2ed758d0)],rax // FLINK
fffff807`2f004be9 488905e80cd7ff  mov     qword ptr [nt!CmpCallbackContextSList+0x8 (fffff807`2ed758d8)],rax // BLINK
fffff807`2f004bf0 4883c428        add     rsp,28h
fffff807`2f004bf4 c3              ret

nt!CmpInitCallbacks+0x9429a:
fffff807`2f098e0e b902000080      mov     ecx,80000002h
fffff807`2f098e13 e8b89992ff      call    nt!RtlRaiseStatus (fffff807`2e9c27d0)
fffff807`2f098e18 cc              int     3
fffff807`2f098e19 cc              int     3
fffff807`2f098e1a 8b0d6485d5ff    mov     ecx,dword ptr [nt!PopHeteroSystem (fffff807`2edf1384)]
fffff807`2f098e20 893dea73d5ff    mov     dword ptr [nt!PpmHeteroDesiredPolicy (fffff807`2edf0210)],edi
fffff807`2f098e26 8d41ff          lea     eax,[rcx-1]
fffff807`2f098e29 a9faffffff      test    eax,0FFFFFFFAh
fffff807`2f098e2e 7505            jne     nt!PopPpmHeteroPolicyCallback+0x94235 (fffff807`2f098e35)  Branch

nt!PopPpmHeteroPolicyCallback+0x53:
fffff807`2f004c53 488d0d6620ccff  lea     rcx,[nt!PpmPerfPolicyLock (fffff807`2ecc6cc0)]
fffff807`2f004c5a e8812b8bff      call    nt!PpmReleaseLock (fffff807`2e8b77e0)

nt!PopPpmHeteroPolicyCallback+0x5f:
fffff807`2f004c5f 8bc3            mov     eax,ebx
fffff807`2f004c61 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff807`2f004c66 4883c420        add     rsp,20h
fffff807`2f004c6a 5f              pop     rdi
fffff807`2f004c6b c3              ret

nt!PopPpmHeteroPolicyCallback+0x94230:
fffff807`2f098e30 83f906          cmp     ecx,6
fffff807`2f098e33 7502            jne     nt!PopPpmHeteroPolicyCallback+0x94237 (fffff807`2f098e37)  Branch

nt!PopPpmHeteroPolicyCallback+0x94235:
fffff807`2f098e35 8bfb            mov     edi,ebx

nt!PopPpmHeteroPolicyCallback+0x94237:
fffff807`2f098e37 3b3d1b72d5ff    cmp     edi,dword ptr [nt!PpmHeteroPolicy (fffff807`2edf0058)]
fffff807`2f098e3d 0f8410bef6ff    je      nt!PopPpmHeteroPolicyCallback+0x53 (fffff807`2f004c53)  Branch

nt!PopPpmHeteroPolicyCallback+0x94243:
fffff807`2f098e43 b101            mov     cl,1
fffff807`2f098e45 893d0d72d5ff    mov     dword ptr [nt!PpmHeteroPolicy (fffff807`2edf0058)],edi
fffff807`2f098e4b e85867f5ff      call    nt!PpmReinitializeHeteroEngine (fffff807`2efef5a8)
fffff807`2f098e50 90              nop
fffff807`2f098e51 e909bef6ff      jmp     nt!PopPpmHeteroPolicyCallback+0x5f (fffff807`2f004c5f)  Branch
