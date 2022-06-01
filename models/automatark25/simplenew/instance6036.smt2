(declare-const X String)
; /^\u{2f}[0-9]{4,10}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 4 10) (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
(check-sat)
