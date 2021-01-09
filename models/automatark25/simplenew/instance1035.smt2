(declare-const X String)
; /q=[a-f0-9]+$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/q=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
(check-sat)
