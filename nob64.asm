global _start
section .text

_start:

fld1
fst     st1
fadd    st1, st0
fdiv    st0, st1
push    0x534
fild    dword [rsp]
pop     rax
fxch    st1
fmul    st0, st1
fistp   dword [rsp]
pop     rax
