(declare-const X String)
; Softwarerequestedoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "Softwarerequestedoffers.bullseye-network.com\x0a"))))
(check-sat)
