(declare-const X String)
; Referer\u{3A}TencentTraveler
(assert (not (str.in_re X (str.to_re "Referer:TencentTraveler\u{a}"))))
(check-sat)
