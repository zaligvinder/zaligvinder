(declare-const X String)
; /q=[a-f0-9]+$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/q=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/Ui\u{a}")))))
(check-sat)
