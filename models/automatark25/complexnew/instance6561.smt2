(declare-const X String)
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.xfdl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a")))))
; ^([a-z]{2,3}(\.[a-zA-Z][a-zA-Z_$0-9]*)*)\.([A-Z][a-zA-Z_$0-9]*)$
(assert (str.in.re X (re.++ (str.to.re ".\x0a") ((_ re.loop 2 3) (re.range "a" "z")) (re.* (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))))) (re.range "A" "Z") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "$") (re.range "0" "9"))))))
; ^(((ht|f)tp(s?))\://).*$
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a://") (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))))
(check-sat)
