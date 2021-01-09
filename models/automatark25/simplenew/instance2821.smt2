(declare-const X String)
; /[0-9A-Z]{8}\x3abpass\x0a/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re ":bpass\x0a/\x0a")))))
(check-sat)
