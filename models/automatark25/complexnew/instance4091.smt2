(declare-const X String)
; Theef2offers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "Theef2offers.bullseye-network.com\x0a"))))
; ^[^\x00-\x1f\x21-\x26\x28-\x2d\x2f-\x40\x5b-\x60\x7b-\xff]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "\x00" "\x1f") (re.range "!" "&") (re.range "(" "-") (re.range "/" "@") (re.range "[" "`") (re.range "{" "\xff"))) (str.to.re "\x0a")))))
(check-sat)
