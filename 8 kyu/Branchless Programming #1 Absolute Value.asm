; -----------------------------------------------------------
; Write a function that takes a 64-bit integer x and returns its absolute value (|x|).
; 
; absolute(-26) = 26
; absolute(0) = 0
; absolute(+26) = 26
; 
; Constraints
; The submission should be at most 5 lines of code, assuming 1 global directive at the top and 1 instruction per line.
; The input will never overflow.
; You cannot cheat by declaring data (via Dx), using macros/preprocessing (% and \ characters), calling extern functions, or manipulating 
; stack (rsp, rbp, push, and pop).
; -----------------------------------------------------------

global absolute_value
absolute_value: mov rax, rdi
    neg rax
    cmovs rax, rdi
    ret

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