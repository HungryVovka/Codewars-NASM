; -----------------------------------------------------------
; If we list all the natural numbers below 10 that are multiples of 3 or 5, 
; we get 3, 5, 6 and 9. The sum of these multiples is 23.
; 
; Finish the solution so that it returns the sum of all 
; the multiples of 3 or 5 below // the number passed in.
; 
; Additionally, if the number is negative, return 0.
; 
; Note: If a number is a multiple of both 3 and 5, only count it once.
; -----------------------------------------------------------

global mul3or5

section .text

; <----- unsigned mul3or5(int num) ----->
mul3or5:
    xor eax, eax          ; result_value = 0
    xor ecx, ecx          ; current_index = 0
    
    xor r8d, r8d          ; counter_3 = 0
    xor r9d, r9d          ; counter_5 = 0
    
.loop_start:
    cmp ecx, edi          ; i >= num ?
    jge .loop_end
    
    ; если один из счётчиков = 0 -> кратно
    cmp r8d, 0
    je .add_value
    
    cmp r9d, 0
    je .add_value
    
    jmp .after_add_check
    
.add_value:
    add eax, ecx
    
.after_add_check:
    ; обновляем счётчики
    inc r8d
    inc r9d

    cmp r8d, 3
    jne .check_5
    xor r8d, r8d          ; reset to 0
    
.check_5:
    cmp r9d, 5
    jne .next_iteration
    xor r9d, r9d
    
.next_iteration:
    inc ecx
    jmp .loop_start
    
.loop_end:
    ret
; ---------> end of mul3or5 <---------

; -----------------------------------------------------------
; License
; Tasks are the property of Codewars (https://www.codewars.com/) 
; and users of this resource.
; 
; All solution code in this repository 
; is the personal property of Vladimir Rukavishnikov
; (vladimirrukavishnikovmail@gmail.com).
; 
; Copyright (C) 2026 Vladimir Rukavishnikov
; 
; This file is part of the HungryVovka/Codewars-NASM
; (https://github.com/HungryVovka/Codewars-NASM)
; 
; License is GNU General Public License v3.0
; (https://github.com/HungryVovka/Codewars-NASM/blob/main/LICENSE)
; 
; You should have received a copy of the GNU General Public License v3.0
; along with this code. If not, see http://www.gnu.org/licenses/
; -----------------------------------------------------------