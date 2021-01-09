(declare-const X String)
; /^\/\d+$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
