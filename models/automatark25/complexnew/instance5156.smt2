(declare-const X String)
; (\{\\f\d*)\\([^;]+;)
(assert (str.in.re X (re.++ (str.to.re "\x5c\x0a{\x5cf") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to.re ";"))) (str.to.re ";"))))
; doarauzeraqf\x2fvvv\.ul
(assert (not (str.in.re X (str.to.re "doarauzeraqf/vvv.ul\x0a"))))
; ^\d+((\.|\,)\d+)?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
