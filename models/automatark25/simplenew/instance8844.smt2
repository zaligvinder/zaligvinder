(declare-const X String)
; X-Mailer\u{3a}Referer\u{3A}sponsor2\.ucmore\.com
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}Referer:sponsor2.ucmore.com\u{a}"))))
(check-sat)
