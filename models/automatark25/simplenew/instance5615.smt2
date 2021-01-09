(declare-const X String)
; /\/blog\/images\/3521\.jpg\?v\d{2}=\d{2}\x26tq=/Ui
(assert (str.in.re X (re.++ (str.to.re "//blog/images/3521.jpg?v") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "&tq=/Ui\x0a"))))
(check-sat)
