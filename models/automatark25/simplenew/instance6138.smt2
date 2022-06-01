(declare-const X String)
; Host\u{3A}IPAsynchaveAdToolszopabora\u{2E}info
(assert (str.in_re X (str.to_re "Host:IPAsynchaveAdToolszopabora.info\u{a}")))
(check-sat)
