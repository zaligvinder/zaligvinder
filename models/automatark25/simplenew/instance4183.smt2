(declare-const X String)
; /\/[0-9A-F]{24}/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/Ui\x0a"))))
(check-sat)
