(declare-const X String)
; /^\/[a-f0-9]{8}\/[a-f0-9]{8}\/$/iU
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "//iU\u{a}"))))
(check-sat)
