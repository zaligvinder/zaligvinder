(declare-const X String)
; Host\u{3A}hjhgquqssq\u{2f}pjmonHost\u{3A}Host\u{3A}A-311byName=Your\+Host\+is\u{3A}
(assert (not (str.in_re X (str.to_re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\u{a}"))))
(check-sat)
