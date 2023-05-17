section .text
    global _start

_start:
    ; Escrever mensagem na tela
    mov eax, 4
    mov ebx, 1
    mov ecx, message
    mov edx, message_length
    int 0x80

    ; Sair do programa
    mov eax, 1
    xor ebx, ebx
    int 0x80

section .data
    message db 'Olá, mundo!', 0xa
    message_length equ $ - message
