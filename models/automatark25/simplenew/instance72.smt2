(declare-const X String)
; /\x2F[a-z]+\x2epng/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "a" "z")) (str.to.re ".png/Ui\x0a")))))
(check-sat)
