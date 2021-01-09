(declare-const X String)
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (str.in.re X (str.to.re "eveocczmthmmq/omzlHello./asp/offers.asp?\x0a")))
(check-sat)
