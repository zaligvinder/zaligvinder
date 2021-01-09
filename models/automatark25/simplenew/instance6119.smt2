(declare-const X String)
; Referer\x3ATencentTraveler
(assert (not (str.in.re X (str.to.re "Referer:TencentTraveler\x0a"))))
(check-sat)
