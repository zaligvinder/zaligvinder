(declare-const X String)
; User-Agent\x3Aetbuviaebe\x2feqv\.bvv
(assert (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a")))
(check-sat)
