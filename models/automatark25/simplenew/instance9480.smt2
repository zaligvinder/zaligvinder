(declare-const X String)
; RootviewNetControl\x2EServerdata2\.activshopper\.com
(assert (not (str.in.re X (str.to.re "RootviewNetControl.Server\x13data2.activshopper.com\x0a"))))
(check-sat)
