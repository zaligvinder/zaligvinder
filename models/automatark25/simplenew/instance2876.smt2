(declare-const X String)
; Host\u{3a}\u{7D}\u{7B}Port\u{3A}www\u{2E}instafinder\u{2E}com
(assert (str.in_re X (str.to_re "Host:}{Port:www.instafinder.com\u{a}")))
(check-sat)
