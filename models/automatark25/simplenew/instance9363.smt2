(declare-const X String)
; /\/[a-z]{4}\.html\?j\=\d{6,7}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 4 4) (re.range "a" "z")) (str.to_re ".html?j=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
(check-sat)
