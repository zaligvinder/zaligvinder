(declare-const X String)
; Host\x3Ahirmvtg\x2fggqh\.kqhverA-Spy
(assert (not (str.in.re X (str.to.re "Host:hirmvtg/ggqh.kqh\x1bverA-Spy\x0a"))))
(check-sat)
