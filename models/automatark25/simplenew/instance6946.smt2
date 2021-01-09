(declare-const X String)
; /\x40\x40\x40([0-9A-Z]{2}\x2D){5}[0-9A-Z]{2}/iP
(assert (not (str.in.re X (re.++ (str.to.re "/@@@") ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re "-"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re "/iP\x0a")))))
(check-sat)
