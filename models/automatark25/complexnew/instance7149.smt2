(declare-const X String)
; /\/install\.asp\?mac=[A-F\d]{12}\x26mode/Ui
(assert (str.in.re X (re.++ (str.to.re "//install.asp?mac=") ((_ re.loop 12 12) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&mode/Ui\x0a"))))
; (\+91(-)?|91(-)?|0(-)?)?(9)[0-9]{9}
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "+91") (re.opt (str.to.re "-"))) (re.++ (str.to.re "91") (re.opt (str.to.re "-"))) (re.++ (str.to.re "0") (re.opt (str.to.re "-"))))) (str.to.re "9") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
