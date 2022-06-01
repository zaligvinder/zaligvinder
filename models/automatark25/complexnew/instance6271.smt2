(declare-const X String)
; ^\d{8,8}$|^[SC]{2,2}\d{6,6}$
(assert (not (str.in_re X (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.union (str.to_re "S") (str.to_re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; spyblpatHost\u{3A}is\u{2E}phpBarFrom\u{3A}Host\u{3A}gdvsotuqwsg\u{2f}dxt\.hd
(assert (not (str.in_re X (str.to_re "spyblpatHost:is.phpBarFrom:Host:gdvsotuqwsg/dxt.hd\u{a}"))))
; Host\u{3A}Subject\u{3A}From\u{3a}\u{d0}\u{c5}\u{cf}\u{a2}
(assert (not (str.in_re X (str.to_re "Host:Subject:From:\u{d0}\u{c5}\u{cf}\u{a2}\u{a}"))))
(check-sat)
