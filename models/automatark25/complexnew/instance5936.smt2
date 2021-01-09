(declare-const X String)
; ^(([1-4][0-9])|(0[1-9])|(5[0-2]))\/[1-2]\d{3}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "1" "4") (re.range "0" "9")) (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "5") (re.range "0" "2"))) (str.to.re "/") (re.range "1" "2") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; ("((\\.)|[^\\"])*")
(assert (not (str.in.re X (re.++ (str.to.re "\x0a\x22") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x22")))))
(check-sat)
