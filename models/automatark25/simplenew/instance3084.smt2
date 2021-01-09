(declare-const X String)
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "MSNLOGOVNUsertooffers.bullseye-network.com\x0a"))))
(check-sat)
