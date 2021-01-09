(declare-const X String)
; /filename=[^\n]*\x2epdf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pdf/i\x0a")))))
; wowokayoffers\x2Ebullseye-network\x2EcomRTB\x0D\x0A\x0D\x0AAttached
(assert (str.in.re X (str.to.re "wowokayoffers.bullseye-network.comRTB\x0d\x0a\x0d\x0aAttached\x0a")))
(check-sat)
