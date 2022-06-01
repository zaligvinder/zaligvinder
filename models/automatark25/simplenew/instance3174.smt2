(declare-const X String)
; log\=\u{7B}IP\u{3A}Referer\u{3A}www\u{2E}mirarsearch\u{2E}com\u{2E}txte2give\.comSpywareStrikeConnectedIPSubject\u{3A}
(assert (str.in_re X (str.to_re "log={IP:Referer:www.mirarsearch.com.txte2give.comSpywareStrikeConnectedIPSubject:\u{a}")))
(check-sat)
