(declare-const X String)
; /[0-9A-Z]{8}\u{3a}bpass\u{a}/
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re ":bpass\u{a}/\u{a}"))))
(check-sat)
