(declare-const X String)
; /[a-z]=[a-f0-9]{98}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 98 98) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/P\x0a")))))
; /\x2escr([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.scr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^([a-z]{2,3}(\.[a-zA-Z][a-zA-Z_$0-9]*)*)\.([A-Z][a-zA-Z_$0-9]*)$
(assert (str.in.re X (re.++ (str.to.re ".\x0a") ((_ re.loop 2 3) (re.range "a" "z")) (re.* (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))))) (re.range "A" "Z") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))))))
(check-sat)
