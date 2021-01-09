(declare-const X String)
; Host\x3AIPAsynchaveAdToolszopabora\x2Einfo
(assert (str.in.re X (str.to.re "Host:IPAsynchaveAdToolszopabora.info\x0a")))
(check-sat)
