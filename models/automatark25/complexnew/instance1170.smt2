(declare-const X String)
; doarauzeraqf\x2fvvv\.ul
(assert (str.in.re X (str.to.re "doarauzeraqf/vvv.ul\x0a")))
; ^(.*)
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
