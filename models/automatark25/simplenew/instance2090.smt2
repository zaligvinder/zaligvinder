(declare-const X String)
; Remote\u{3C}chat\u{3E}X-Mailer\u{3a}www\u{2e}proventactics\u{2e}com
(assert (str.in_re X (str.to_re "Remote<chat>\u{1b}X-Mailer:\u{13}www.proventactics.com\u{a}")))
(check-sat)
