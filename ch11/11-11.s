foo:                                    # @foo
        push    rbx
        sub     rsp, 16
        mov     ebx, esi
        test    edi, edi
        je      .LBB0_2
        call    L1@PLT
.LBB0_3:
        mov     rax, qword ptr [rip + i@GOTPCREL]
        add     ebx, dword ptr [rax]
        mov     dword ptr [rax], ebx
        mov     eax, ebx
        add     rsp, 16
        pop     rbx
        ret
.LBB0_2:                                # %codeRepl
        lea     rsi, [rsp + 12]
        mov     edi, ebx //准备函数参数
        call    foo.cold.1 //调用函数
        mov     ebx, dword ptr [rsp + 12] //处理返回值
        jmp     .LBB0_3
foo.cold.1:                             # @foo.cold.1
        push    rbp
        push    rbx
        push    rax
        mov     rbx, rsi
        mov     ebp, edi
        call    R1@PLT
        inc     ebp
        mov     dword ptr [rbx], ebp
        add     rsp, 8
        pop     rbx
        pop     rbp
        ret