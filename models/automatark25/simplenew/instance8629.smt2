(declare-const X String)
; /\/install\.asp\?mac=[A-F\d]{12}\x26mode/Ui
(assert (str.in.re X (re.++ (str.to.re "//install.asp?mac=") ((_ re.loop 12 12) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&mode/Ui\x0a"))))
(check-sat)
