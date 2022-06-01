(declare-const X String)
; Host\u{3A}HANDYwww\u{2E}purityscan\u{2E}com
(assert (str.in_re X (str.to_re "Host:HANDYwww.purityscan.com\u{a}")))
(check-sat)
