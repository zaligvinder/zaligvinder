(declare-const X String)
; Host\u{3A}X-Mailer\u{3A}as\u{2E}starware\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:X-Mailer:\u{13}as.starware.com\u{a}"))))
(check-sat)
