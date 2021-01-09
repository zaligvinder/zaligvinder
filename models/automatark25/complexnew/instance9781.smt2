(declare-const X String)
; Theef2offers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "Theef2offers.bullseye-network.com\x0a"))))
; /filename=[^\n]*\x2epng/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".png/i\x0a"))))
; /^\x2f[0-9a-f]+$/iU
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/iU\x0a")))))
; \d{5,12}|\d{1,10}\.\d{1,10}\.\d{1,10}|\d{1,10}\.\d{1,10}
(assert (not (str.in.re X (re.union ((_ re.loop 5 12) (re.range "0" "9")) (re.++ ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 10) (re.range "0" "9"))) (re.++ ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
