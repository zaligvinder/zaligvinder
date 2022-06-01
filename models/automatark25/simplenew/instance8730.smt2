(declare-const X String)
; User-Agent\u{3A}X-Mailer\u{3a}Host\u{3A}dcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "User-Agent:X-Mailer:\u{13}Host:dcww.dmcast.com\u{a}")))
(check-sat)
