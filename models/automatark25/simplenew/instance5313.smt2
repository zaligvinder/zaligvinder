(declare-const X String)
; onAlertMGS-Internal-Web-Manager
(assert (str.in_re X (str.to_re "onAlertMGS-Internal-Web-Manager\u{a}")))
(check-sat)
