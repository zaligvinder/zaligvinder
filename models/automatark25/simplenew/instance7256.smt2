(declare-const X String)
; /setup=[a-z]\&s=\d\&r=\d{5}$/Ui
(assert (str.in.re X (re.++ (str.to.re "/setup=") (re.range "a" "z") (str.to.re "&s=") (re.range "0" "9") (str.to.re "&r=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
