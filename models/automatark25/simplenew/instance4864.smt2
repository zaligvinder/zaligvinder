(declare-const X String)
; eveocczmthmmq\x2fomzl\d\x2Fasp\x2Foffers\.asp\?
(assert (not (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to.re "/asp/offers.asp?\x0a")))))
(check-sat)
