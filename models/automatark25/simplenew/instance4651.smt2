(declare-const X String)
; X-Mailer\u{3A}fromReferer\u{3A}search\u{2e}conduit\u{2e}com\u{2F}dss\u{2F}cc\.2_0_0\.
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}fromReferer:search.conduit.com/dss/cc.2_0_0.\u{a}"))))
(check-sat)
