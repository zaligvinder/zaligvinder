(declare-const X String)
; ^([0-9a-fA-F])*$
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}"))))
; aohobygi\u{2f}zwiwHost\u{3a}\u{7D}\u{7C}richfind\u{2E}com
(assert (str.in_re X (str.to_re "aohobygi/zwiwHost:}|richfind.com\u{a}")))
(check-sat)
