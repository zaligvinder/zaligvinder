(declare-const X String)
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (str.to.re "ovplSubject:TencentTravelerClient}{Sysuptime:\x0a"))))
(check-sat)
