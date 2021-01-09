(declare-const X String)
; <[iI][fF][rR][aA][mM][eE]([^>]*[^/>]*[/>]*[>])
(assert (str.in.re X (re.++ (str.to.re "<") (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "f") (str.to.re "F")) (re.union (str.to.re "r") (str.to.re "R")) (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "e") (str.to.re "E")) (str.to.re "\x0a") (re.* (re.comp (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (re.* (re.union (str.to.re "/") (str.to.re ">"))) (str.to.re ">"))))
; /\?[a-f0-9]{4}$/miU
(assert (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/miU\x0a"))))
; (\<\?php\s+.*?((\?\>)|$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a<?php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "?>")))))
(check-sat)
