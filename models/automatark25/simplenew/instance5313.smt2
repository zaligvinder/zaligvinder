(declare-const X String)
; onAlertMGS-Internal-Web-Manager
(assert (str.in.re X (str.to.re "onAlertMGS-Internal-Web-Manager\x0a")))
(check-sat)
