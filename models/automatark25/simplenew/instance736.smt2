(declare-const X String)
; /^\u{2f}[0-9a-f]+$/iU
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "/iU\u{a}"))))
(check-sat)
