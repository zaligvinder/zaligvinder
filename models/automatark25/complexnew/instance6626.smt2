(declare-const X String)
; %3fSupremeSoftwareoffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "%3fSupremeSoftwareoffers.bullseye-network.com\x0a")))
; ^[0-9#\*abcdABCD]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "#") (str.to.re "*") (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d") (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "D"))) (str.to.re "\x0a"))))
(check-sat)
