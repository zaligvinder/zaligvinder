(declare-const X String)
; /&key=[a-z0-9]{32}&dummy=\d{3,5}/Ui
(assert (str.in.re X (re.++ (str.to.re "/&key=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "&dummy=") ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
