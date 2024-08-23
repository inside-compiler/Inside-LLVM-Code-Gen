bb.5.b6:
; predecessors: %bb.4
  successors: %bb.6(0x80000000); %bb.6(100.00%)

  %13:intregs = A2_sub %26:intregs, %10:intregs
  %14:intregs = S2_addasl_rrri %25:intregs, %10:intregs, 2
  %71:intregs = COPY %13:intregs
  J2_loop0r %bb.6, %71:intregs, implicit-def $lc0, implicit-def $sa0, implicit-def $usr

bb.6.b7 (machine-block-address-taken):
; predecessors: %bb.5, %bb.6
  successors: %bb.7(0x04000000), %bb.6(0x7c000000); %bb.7(3.12%), %bb.6(96.88%)

  %15:intregs = PHI %14:intregs, %bb.5, %22:intregs, %bb.6
  %17:intregs = PHI %11:intregs, %bb.5, %20:intregs, %bb.6
  %18:intregs = PHI %12:intregs, %bb.5, %19:intregs, %bb.6
  %63:intregs = L2_loadri_io %15:intregs, 0 :: (load (s32) from %ir.lsr.iv1, !tbaa !0)
  %64:intregs = L2_loadri_io %15:intregs, 2304 :: (load (s32) from %ir.cgep23, !tbaa !0)
  %65:intregs = nsw A2_add %64:intregs, %63:intregs
  S2_storeri_io %15:intregs, 0, %65:intregs :: (store (s32) into %ir.lsr.iv1, !tbaa !0)
  %66:intregs = nsw A2_sub %63:intregs, %64:intregs
  S2_storeri_io %15:intregs, 2304, %66:intregs :: (store (s32) into %ir.cgep23, !tbaa !0)
  %67:intregs = A2_abs %65:intregs
  %19:intregs = A2_or %67:intregs, %18:intregs
  %68:intregs = A2_abs %66:intregs
  %20:intregs = A2_or %68:intregs, %17:intregs
  %22:intregs = A2_addi %15:intregs, 4
  ENDLOOP0 %bb.6, implicit-def $pc, implicit-def $lc0, implicit $sa0, implicit $lc0
  J2_jump %bb.7, implicit-def dead $pc

bb.7.b9:
; predecessors: %bb.4, %bb.6, %bb.8

  %23:intregs = PHI %28:intregs, %bb.8, %11:intregs, %bb.4, %20:intregs, %bb.6
  %24:intregs = PHI %28:intregs, %bb.8, %12:intregs, %bb.4, %19:intregs, %bb.6
  L4_or_memopw_io %27:intregs, 0, %24:intregs :: (store (s32) into %ir.a2, !tbaa !0), (load (s32) from %ir.a2, !tbaa !0)
  L4_or_memopw_io %27:intregs, 4, %23:intregs :: (store (s32) into %ir.cgep25, !tbaa !0), (load (s32) from %ir.cgep25, !tbaa !0)
  PS_jmpret $r31, implicit-def dead $pc