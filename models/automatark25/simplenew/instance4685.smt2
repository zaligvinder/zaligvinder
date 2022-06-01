(declare-const X String)
; BasicPointsHost\u{3A}news
(assert (not (str.in_re X (str.to_re "BasicPointsHost:news\u{a}"))))
(check-sat)
