(declare-const X String)
; Host\x3A\s+offers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "offers.bullseye-network.com\x0a")))))
(check-sat)
