func1:                                  # @func1
        imul    edi, edi
        lea     eax, [rdi + 1]
        imul    eax, eax
        add     eax, 2
        ret
func2:                                  # @func2
        lea     eax, [rdi + 51]
        imul    eax, eax
        inc     eax
        imul    eax, eax
        add     eax, 2
        ret