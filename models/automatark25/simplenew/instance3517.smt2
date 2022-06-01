(declare-const X String)
; IPUSER-Host\u{3A}User-Agent\u{3A}\u{2F}searchfast\u{2F}
(assert (str.in_re X (str.to_re "IPUSER-Host:User-Agent:/searchfast/\u{a}")))
(check-sat)
