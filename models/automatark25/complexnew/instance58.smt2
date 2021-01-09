(declare-const X String)
; ovplEchelonUser-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "ovplEchelonUser-Agent:User-Agent:Host:\x0a")))
; eveocczmthmmq\x2fomzl\d\x2Fasp\x2Foffers\.asp\?
(assert (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to.re "/asp/offers.asp?\x0a"))))
(check-sat)
