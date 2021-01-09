(declare-const X String)
; ^((100)|(\d{0,2}))$
(assert (str.in.re X (re.++ (re.union (str.to.re "100") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^\$( )*\d*(.\d{1,2})?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.* (str.to.re " ")) (re.* (re.range "0" "9")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
