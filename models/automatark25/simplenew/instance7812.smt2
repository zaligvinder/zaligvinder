(declare-const X String)
; Host\u{3A}X-Mailer\u{3a}toolbar\.wishbone\.com
(assert (not (str.in_re X (str.to_re "Host:X-Mailer:\u{13}toolbar.wishbone.com\u{a}"))))
(check-sat)
