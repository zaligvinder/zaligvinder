(declare-const X String)
; /setup=[a-z]$/Ui
(assert (str.in_re X (re.++ (str.to_re "/setup=") (re.range "a" "z") (str.to_re "/Ui\u{a}"))))
(check-sat)
