(declare-const X String)
; wowokayoffers\x2Ebullseye-network\x2EcomRTB\x0D\x0A\x0D\x0AAttached
(assert (not (str.in.re X (str.to.re "wowokayoffers.bullseye-network.comRTB\x0d\x0a\x0d\x0aAttached\x0a"))))
(check-sat)
