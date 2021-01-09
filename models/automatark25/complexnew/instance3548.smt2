(declare-const X String)
; [\t ]+
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "\x09") (str.to.re " "))) (str.to.re "\x0a"))))
; ^[A-Z]{5}[0-9]{4}[A-Z]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "A" "Z")) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")) (str.to.re "\x0a"))))
; ([^\\"]|\\.)*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x0a")))))
(check-sat)
