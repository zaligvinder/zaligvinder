(declare-const X String)
; href[ ]*=[ ]*('|\")([^\"'])*('|\")
(assert (str.in.re X (re.++ (str.to.re "href") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.union (str.to.re "'") (str.to.re "\x22")) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (re.union (str.to.re "'") (str.to.re "\x22")) (str.to.re "\x0a"))))
; /\x2ewebm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.webm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^[A-Z]{1,2}[1-9][0-9]?[A-Z]? [0-9][A-Z]{2,}|GIR 0AA$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "1" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "A" "Z")) (str.to.re " ") (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z")) (re.* (re.range "A" "Z"))) (str.to.re "GIR 0AA\x0a"))))
; /filename=[^\n]*\x2emov/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mov/i\x0a"))))
; ^([1-9]{0,1})([0-9]{1})(\.[0-9])?$
(assert (str.in.re X (re.++ (re.opt (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
