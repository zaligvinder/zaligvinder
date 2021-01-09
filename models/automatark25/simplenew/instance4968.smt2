(declare-const X String)
; ^\$( )*\d*(.\d{1,2})?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.* (str.to.re " ")) (re.* (re.range "0" "9")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
