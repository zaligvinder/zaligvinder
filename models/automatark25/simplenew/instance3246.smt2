(declare-const X String)
; Host\u{3A}fromZC-Bridgev\u{2E}xml\u{2F}NFO\u{2C}Registered
(assert (not (str.in_re X (str.to_re "Host:fromZC-Bridgev.xml/NFO,Registered\u{a}"))))
(check-sat)
