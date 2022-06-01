(declare-const X String)
; doarauzeraqf\u{2f}vvv\.ul
(assert (str.in_re X (str.to_re "doarauzeraqf/vvv.ul\u{a}")))
(check-sat)
