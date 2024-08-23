square:                                 // @square
        sub     sp, sp, #16
        str     w0, [sp, #12]
        ldr     w8, [sp, #12]
        ldr     w9, [sp, #12]
        mul     w0, w8, w9
        add     sp, sp, #16
        ret