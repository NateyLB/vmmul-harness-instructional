my_dgemv(int, double*, double*, double*):
        mov       rax, rsi                                      #2.55 c1
        xor       r8d, r8d                                      #4.4 c3
        test      edi, edi                                      #4.23 c3
        jle       ..B1.33       # Prob 9%                       #4.23 c5
        movsxd    r9, edi                                       #6.35 c1
        mov       QWORD PTR [-88+rsp], 0                        #4.4[spill] c1
        mov       r11d, edi                                     #5.7 c1
        mov       QWORD PTR [-24+rsp], rax                      #4.4[spill] c1
        lea       r10, QWORD PTR [r9*8]                         #6.24 c3
        mov       QWORD PTR [-32+rsp], r12                      #4.4[spill] c3
        and       r11d, -16                                     #5.7 c3
        mov       QWORD PTR [-80+rsp], r10                      #6.24[spill] c5
        mov       r10, rdx                                      #5.7 c5
        mov       DWORD PTR [-72+rsp], r11d                     #5.7[spill] c5
        mov       r11d, edi                                     #5.7 c5
        mov       QWORD PTR [-40+rsp], r13                      #4.4[spill] c7
        and       r10, 63                                       #5.7 c7
        mov       QWORD PTR [-48+rsp], r14                      #4.4[spill] c7
        mov       QWORD PTR [-56+rsp], r15                      #4.4[spill] c9
        mov       esi, r10d                                     #5.7 c9
        mov       QWORD PTR [-64+rsp], rbx                      #4.4[spill] c9
        shr       r11d, 1                                       #5.7 c9
        and       esi, 7                                        #5.7 c11
        mov       DWORD PTR [-16+rsp], esi                      #5.7[spill] c13
        mov       esi, r10d                                     #5.7 c13
        vmovdqu   ymm2, YMMWORD PTR .L_2il0floatpacket.0[rip]   #5.7 c13
        mov       eax, r11d                                     #4.4 c13
        neg       esi                                           #5.7 c15
        vmovdqu   ymm1, YMMWORD PTR .L_2il0floatpacket.1[rip]   #5.7 c15
        add       esi, 64                                       #5.7 c17
        shr       esi, 3                                        #5.7 c19
        mov       rbx, QWORD PTR [-88+rsp]                      #4.4[spill] c19
..B1.3:                         # Preds ..B1.31 ..B1.2
        cmp       edi, 6                                        #5.7 c1
        jle       ..B1.25       # Prob 50%                      #5.7 c3
        lea       r14, QWORD PTR [rcx+r8*8]                     #6.17 c1
        lea       r13, QWORD PTR [r9*8]                         #5.7 c1
        mov       r11, r14                                      #6.41 c3
        sub       r11, rdx                                      #6.41 c5
        cmp       r11, r13                                      #5.7 c7
        jge       ..B1.6        # Prob 50%                      #5.7 c9
        neg       r11                                           #6.17 c1
        cmp       r11, 8                                        #5.7 c3
        jl        ..B1.25       # Prob 50%                      #5.7 c5
..B1.6:                         # Preds ..B1.4 ..B1.5
        mov       r12, QWORD PTR [-80+rsp]                      #6.35[spill] c1
        imul      r12, r8                                       #6.35 c5 stall 1
        add       r12, QWORD PTR [-24+rsp]                      #6.24[spill] c9 stall 1
        sub       r14, r12                                      #6.24 c11
        cmp       r14, r13                                      #5.7 c13
        jge       ..B1.8        # Prob 50%                      #5.7 c15
        neg       r14                                           #6.17 c1
        cmp       r14, 8                                        #5.7 c3
        jl        ..B1.25       # Prob 50%                      #5.7 c5
..B1.8:                         # Preds ..B1.6 ..B1.7
        vpxord    zmm17, zmm17, zmm17                           #6.10 c1
        vmovsd    xmm0, QWORD PTR [rcx+r8*8]                    #6.10 c1
        vmovaps   zmm16, zmm17                                  #6.10 c3
        cmp       edi, 561                                      #5.7 c3
        jl        ..B1.35       # Prob 10%                      #5.7 c5
        mov       r11d, r10d                                    #5.7 c1
        test      r10d, r10d                                    #5.7 c1
        je        ..B1.12       # Prob 50%                      #5.7 c3
        cmp       DWORD PTR [-16+rsp], 0                        #5.7[spill] c1
        jne       ..B1.34       # Prob 10%                      #5.7 c3
        cmp       edi, esi                                      #5.7 c1
        mov       r11d, esi                                     #5.7 c1
        cmovl     r11d, edi                                     #5.7 c3
..B1.12:                        # Preds ..B1.11 ..B1.9
        mov       r13d, edi                                     #5.7 c1
        sub       r13d, r11d                                    #5.7 c3
        and       r13d, 15                                      #5.7 c5
        neg       r13d                                          #5.7 c7
        add       r13d, edi                                     #5.7 c9
        cmp       r11d, 1                                       #5.7 c9
        jb        ..B1.16       # Prob 50%                      #5.7 c11
        vmovd     xmm3, r11d                                    #5.7 c1
        mov       r14d, 255                                     #5.7 c1
        vmovdqa   ymm4, ymm1                                    #5.7 c1
        xor       r15d, r15d                                    #5.7 c1
        vpbroadcastd ymm3, xmm3                                 #5.7 c3
        kmovw     k1, r14d                                      #5.7 c3
        movsxd    r14, r11d                                     #5.7 c5
..B1.14:                        # Preds ..B1.14 ..B1.13
        vpcmpgtd  k2{k1}, zmm3, zmm4                            #5.7 c3
        vpaddd    ymm4, ymm4, ymm2                              #5.7 c3
        vmovupd   zmm18{k2}{z}, ZMMWORD PTR [rdx+r15*8]         #6.41 c5
        vfmadd231pd zmm17{k2}, zmm18, ZMMWORD PTR [r12+r15*8]   #6.41 c11 stall 2
        add       r15, 8                                        #5.7 c11
        cmp       r15, r14                                      #5.7 c13
        jb        ..B1.14       # Prob 82%                      #5.7 c15
        cmp       edi, r11d                                     #5.7 c1
        je        ..B1.24       # Prob 10%                      #5.7 c3
..B1.16:                        # Preds ..B1.15 ..B1.12 ..B1.35
        lea       r14d, DWORD PTR [16+r11]                      #5.7 c1
        cmp       r13d, r14d                                    #5.7 c3
        jl        ..B1.20       # Prob 50%                      #5.7 c5
        movsxd    r11, r11d                                     #5.7 c1
        movsxd    r14, r13d                                     #5.7 c1
..B1.18:                        # Preds ..B1.18 ..B1.17
        vmovups   zmm18, ZMMWORD PTR [rdx+r11*8]                #6.41 c1
        vmovups   zmm19, ZMMWORD PTR [64+rdx+r11*8]             #6.41 c1
        vfmadd231pd zmm17, zmm18, ZMMWORD PTR [r12+r11*8]       #6.41 c7 stall 2
        vfmadd231pd zmm16, zmm19, ZMMWORD PTR [64+r12+r11*8]    #6.41 c7
        add       r11, 16                                       #5.7 c7
        cmp       r11, r14                                      #5.7 c9
        jb        ..B1.18       # Prob 82%                      #5.7 c11
..B1.20:                        # Preds ..B1.18 ..B1.16 ..B1.34
        lea       r11d, DWORD PTR [1+r13]                       #5.7 c1
        cmp       r11d, edi                                     #5.7 c3
        ja        ..B1.24       # Prob 50%                      #5.7 c5
        mov       r14d, edi                                     #5.7 c1
        mov       r11d, 255                                     #5.7 c1
        vmovdqa   ymm4, ymm1                                    #5.7 c1
        sub       r14d, r13d                                    #5.7 c3
        movsxd    r13, r13d                                     #6.35 c3
        vmovd     xmm3, r14d                                    #5.7 c5
        lea       r12, QWORD PTR [r12+r13*8]                    #6.24 c5
        lea       r14, QWORD PTR [rdx+r13*8]                    #6.41 c5
        neg       r13                                           #5.7 c5
        kmovw     k1, r11d                                      #5.7 c5
        vpbroadcastd ymm3, xmm3                                 #5.7 c7
        xor       r11d, r11d                                    #5.7 c7
        add       r13, r9                                       #5.7 c9
..B1.22:                        # Preds ..B1.22 ..B1.21
        vpcmpgtd  k2{k1}, zmm3, zmm4                            #5.7 c3
        vpaddd    ymm4, ymm4, ymm2                              #5.7 c3
        vmovupd   zmm18{k2}{z}, ZMMWORD PTR [r14+r11*8]         #6.41 c5
        vfmadd231pd zmm17{k2}, zmm18, ZMMWORD PTR [r12+r11*8]   #6.41 c11 stall 2
        add       r11, 8                                        #5.7 c11
        cmp       r11, r13                                      #5.7 c13
        jb        ..B1.22       # Prob 82%                      #5.7 c15
..B1.24:                        # Preds ..B1.22 ..B1.15 ..B1.20
        vaddpd    zmm3, zmm17, zmm16                            #6.10 c1
        vextractf64x4 ymm4, zmm3, 1                             #6.10 c7 stall 2
        vaddpd    ymm5, ymm4, ymm3                              #6.10 c9
        valignq   zmm16, zmm5, zmm5, 3                          #6.10 c17
        valignq   zmm17, zmm5, zmm5, 2                          #6.10 c17
        valignq   zmm18, zmm5, zmm5, 1                          #6.10 c19
        vaddsd    xmm6, xmm17, xmm18                            #6.10 c23
        vaddsd    xmm7, xmm16, xmm5                             #6.10 c25
        vaddsd    xmm8, xmm6, xmm7                              #6.10 c29 stall 1
        vaddsd    xmm0, xmm0, xmm8                              #6.10 c35 stall 2
        vmovsd    QWORD PTR [rcx+r8*8], xmm0                    #6.10 c41 stall 2
        jmp       ..B1.31       # Prob 100%                     #6.10 c41 stall 2
..B1.25:                        # Preds ..B1.3 ..B1.5 ..B1.7
        mov       r12d, 1                                       #5.7 c1
        xor       r13d, r13d                                    #5.7 c1
        test      eax, eax                                      #5.7 c3
        jbe       ..B1.29       # Prob 10%                      #5.7 c5
        mov       r12d, r8d                                     #6.10 c1
        vmovsd    xmm0, QWORD PTR [rcx+r8*8]                    #6.17 c1
        mov       r11, QWORD PTR [-24+rsp]                      #6.35[spill] c1
        imul      r12d, edi                                     #6.35 c3
..B1.27:                        # Preds ..B1.27 ..B1.26
        movsxd    r15, r13d                                     #6.10 c1
        lea       r14d, DWORD PTR [r12+r13*2]                   #6.35 c1
        add       r13d, 1                                       #5.7 c1
        shl       r15, 4                                        #6.10 c3
        movsxd    r14, r14d                                     #6.35 c3
        vmovsd    xmm3, QWORD PTR [rdx+r15]                     #6.41 c5
        vfmadd231sd xmm0, xmm3, QWORD PTR [r11+r14*8]           #6.10 c11 stall 2
        vmovsd    QWORD PTR [rcx+r8*8], xmm0                    #6.10 c17 stall 2
        vmovsd    xmm4, QWORD PTR [8+rdx+r15]                   #6.41 c17
        vfmadd231sd xmm0, xmm4, QWORD PTR [8+r11+r14*8]         #6.10 c23 stall 2
        vmovsd    QWORD PTR [rcx+r8*8], xmm0                    #6.10 c29 stall 2
        cmp       r13d, eax                                     #5.7 c29
        jb        ..B1.27       # Prob 64%                      #5.7 c31
        lea       r12d, DWORD PTR [1+r13+r13]                   #6.10 c1
..B1.29:                        # Preds ..B1.28 ..B1.25
        lea       r11d, DWORD PTR [-1+r12]                      #5.7 c1
        cmp       r11d, edi                                     #5.7 c3
        jae       ..B1.31       # Prob 10%                      #5.7 c5
        mov       r11, QWORD PTR [-24+rsp]                      #6.24[spill] c1
        movsxd    r12, r12d                                     #6.35 c1
        vmovsd    xmm0, QWORD PTR [-8+rdx+r12*8]                #6.41 c3
        add       r12, rbx                                      #6.35 c3
        vmovsd    xmm3, QWORD PTR [-8+r11+r12*8]                #6.24 c5
        vfmadd213sd xmm3, xmm0, QWORD PTR [rcx+r8*8]            #6.10 c11 stall 2
        vmovsd    QWORD PTR [rcx+r8*8], xmm3                    #6.10 c17 stall 2
..B1.31:                        # Preds ..B1.29 ..B1.30 ..B1.24
        add       r8, 1                                         #4.4 c1
        add       rbx, r9                                       #4.4 c1
        cmp       r8, r9                                        #4.4 c3
        jb        ..B1.3        # Prob 82%                      #4.4 c5
        mov       r12, QWORD PTR [-32+rsp]                      #[spill] c1
        mov       r13, QWORD PTR [-40+rsp]                      #[spill] c1
        mov       r14, QWORD PTR [-48+rsp]                      #[spill] c5 stall 1
        mov       r15, QWORD PTR [-56+rsp]                      #[spill] c5
        mov       rbx, QWORD PTR [-64+rsp]                      #[spill] c9 stall 1
..B1.33:                        # Preds ..B1.1 ..B1.32
        ret                                                     #9.1 c5
..B1.34:                        # Preds ..B1.10
        xor       r13d, r13d                                    #5.7 c1
        jmp       ..B1.20       # Prob 100%                     #5.7 c1
..B1.35:                        # Preds ..B1.8
        mov       r13d, DWORD PTR [-72+rsp]                     #5.7[spill] c1
        xor       r11d, r11d                                    #5.7 c1
        jmp       ..B1.16       # Prob 100%                     #5.7 c1
.L_2il0floatpacket.0:
        .long   0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008,0x00000008
.L_2il0floatpacket.1:
        .long   0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007