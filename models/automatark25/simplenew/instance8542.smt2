(declare-const X String)
; /^\u{2f}[0-9A-F]{42}$/Um
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 42 42) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "/Um\u{a}"))))
(check-sat)
