(declare-const X String)
; Host\x3A\s+offers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "offers.bullseye-network.com\x0a")))))
; ^(-|\+)?(((100|((0|[1-9]{1,2})(\.[0-9]+)?)))|(\.[0-9]+))%?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.union (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))) (str.to.re "100") (re.++ (re.union (str.to.re "0") ((_ re.loop 1 2) (re.range "1" "9"))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
(check-sat)
