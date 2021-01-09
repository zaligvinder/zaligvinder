(declare-const X String)
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "MSNLOGOVNUsertooffers.bullseye-network.com\x0a"))))
; /filename=[^\n]*\x2eurl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".url/i\x0a")))))
(check-sat)
