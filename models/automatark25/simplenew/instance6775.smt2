(declare-const X String)
; quick\x2Eqsrch\x2Ecom\s+Apofis\d+ToolBar
(assert (not (str.in.re X (re.++ (str.to.re "quick.qsrch.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Apofis") (re.+ (re.range "0" "9")) (str.to.re "ToolBar\x0a")))))
(check-sat)
