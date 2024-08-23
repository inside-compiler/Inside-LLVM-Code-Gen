func1:                                  # @func1
        imul    edi, edi
        lea     eax, [rdi + 1]
        jmp     OUTLINED_FUNCTION_0             # TAILCALL
func2:                                  # @func2
        lea     eax, [rdi + 51]
        imul    eax, eax
        inc     eax
        jmp     OUTLINED_FUNCTION_0             # TAILCALL
OUTLINED_FUNCTION_0:                    # @OUTLINED_FUNCTION_0
        imul    eax, eax
        add     eax, 2
        ret