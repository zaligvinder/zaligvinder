(declare-const X String)
; ^([0-9a-fA-F])*$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
; aohobygi\x2fzwiwHost\x3a\x7D\x7Crichfind\x2Ecom
(assert (str.in.re X (str.to.re "aohobygi/zwiwHost:}|richfind.com\x0a")))
(check-sat)
