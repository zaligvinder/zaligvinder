(declare-const X String)
; ^[A-Z]$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (str.to.re "\x0a")))))
; Host\x3A\s+offers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "offers.bullseye-network.com\x0a"))))
; /^[A-Z]{3}[G|A|F|C|T|H|P]{1}[A-Z]{1}\d{4}[A-Z]{1}$/;
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 1 1) (re.union (str.to.re "G") (str.to.re "|") (str.to.re "A") (str.to.re "F") (str.to.re "C") (str.to.re "T") (str.to.re "H") (str.to.re "P"))) ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")) (str.to.re "/;\x0a")))))
(check-sat)
