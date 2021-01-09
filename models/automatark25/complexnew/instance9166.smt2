(declare-const X String)
; ^(5[1-5]\d{2})\d{12}|(4\d{3})(\d{12}|\d{9})$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 9 9) (re.range "0" "9"))) (str.to.re "\x0a4") ((_ re.loop 3 3) (re.range "0" "9"))))))
; /\x2ekvl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.kvl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
