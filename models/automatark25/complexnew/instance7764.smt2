(declare-const X String)
; doarauzeraqf\x2fvvv\.ul
(assert (not (str.in.re X (str.to.re "doarauzeraqf/vvv.ul\x0a"))))
; ^[A-Z]{1}( |-)?[1-9]{1}[0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
