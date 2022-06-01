(declare-const X String)
; -i%3fUser-Agent\u{3A}www\u{2e}proventactics\u{2e}com
(assert (str.in_re X (str.to_re "-i%3fUser-Agent:www.proventactics.com\u{a}")))
(check-sat)
