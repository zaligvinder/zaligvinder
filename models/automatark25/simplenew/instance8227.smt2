(declare-const X String)
; DmInf\x5E\s+offers\x2Ebullseye-network\x2Ecomlogfile
(assert (not (str.in.re X (re.++ (str.to.re "DmInf^") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "offers.bullseye-network.comlogfile\x0a")))))
(check-sat)
