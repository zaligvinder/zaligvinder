(declare-const X String)
; ^(1[89]|[2-9]\d)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "8") (str.to.re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (str.in.re X (str.to.re "eveocczmthmmq/omzlHello./asp/offers.asp?\x0a")))
(check-sat)
