(declare-const X String)
; /\/[a-z]{4}\.html\?j\=\d{6,7}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to.re ".html?j=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
