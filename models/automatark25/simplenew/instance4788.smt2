(declare-const X String)
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (not (str.in.re X (str.to.re "stats.drivecleaner.com\x13Exciteasdbiz.biz\x0a"))))
(check-sat)
