(declare-const X String)
; Theef2offers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "Theef2offers.bullseye-network.com\x0a"))))
(check-sat)
