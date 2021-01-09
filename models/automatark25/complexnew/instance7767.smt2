(declare-const X String)
; Theef2offers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "Theef2offers.bullseye-network.com\x0a"))))
; (^(6011)\d{12}$)|(^(65)\d{14}$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "6011") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "\x0a65") ((_ re.loop 14 14) (re.range "0" "9")))))))
; /filename=[^\n]*\x2epsd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a")))))
(check-sat)
