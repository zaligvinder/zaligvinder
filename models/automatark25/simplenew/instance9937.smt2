(declare-const X String)
; IPAnaloffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "IPAnaloffers.bullseye-network.com\x0a"))))
(check-sat)
