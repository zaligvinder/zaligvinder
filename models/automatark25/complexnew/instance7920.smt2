(declare-const X String)
; replace(MobileNo,' ',''),'^(\+44|0044|0)(7)[4-9][0-9]{8}$'
(assert (not (str.in.re X (re.++ (str.to.re "replaceMobileNo,' ','','") (re.union (str.to.re "+44") (str.to.re "0044") (str.to.re "0")) (str.to.re "7") (re.range "4" "9") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "'\x0a")))))
; ^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,6}
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (re.range "1" "8")) (re.range "1" "9")) (re.++ (re.range "1" "9") (str.to.re "0"))) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
