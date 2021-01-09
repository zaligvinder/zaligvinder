(declare-const X String)
; iz=Referer\x3Aoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "iz=Referer:offers.bullseye-network.com\x0a"))))
(check-sat)
