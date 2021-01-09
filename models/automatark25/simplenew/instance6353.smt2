(declare-const X String)
; Host\x3Ahjhgquqssq\x2fpjmonHost\x3AHost\x3AA-311byName=Your\+Host\+is\x3A
(assert (str.in.re X (str.to.re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\x0a")))
(check-sat)
