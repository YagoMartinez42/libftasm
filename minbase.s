; Program that does nothing. Intel Syntax: Is assembled with nasm 
; ';' is the comment mark in this syntax

section .text
  global start
  global _main

start:
  call _main
  ret

_main:
  nop ; no operation
  ret