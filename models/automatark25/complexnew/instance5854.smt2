(declare-const X String)
; /filename=[^\n]*\x2eplf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plf/i\x0a"))))
; /\.php\?action=jv\&h=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "/.php?action=jv&h=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; Softwarerequestedoffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "Softwarerequestedoffers.bullseye-network.com\x0a")))
(check-sat)
