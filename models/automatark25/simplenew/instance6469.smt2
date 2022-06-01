(declare-const X String)
; aohobygi\u{2f}zwiwHost\u{3a}\u{7D}\u{7C}richfind\u{2E}com
(assert (str.in_re X (str.to_re "aohobygi/zwiwHost:}|richfind.com\u{a}")))
(check-sat)
