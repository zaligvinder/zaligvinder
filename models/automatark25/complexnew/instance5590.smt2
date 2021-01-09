(declare-const X String)
; ^((25[0-4]|(2[0-4]|1[0-9]|[1-9]?)[0-9]\.){3}(25[0-4]|(2[0-4]|1[0-9]|[1-9]?)[0-9]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.opt (re.range "1" "9"))) (re.range "0" "9") (str.to.re ".")))) (re.union (re.++ (str.to.re "25") (re.range "0" "4")) (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.opt (re.range "1" "9"))) (re.range "0" "9")))))))
; IPAnaloffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "IPAnaloffers.bullseye-network.com\x0a")))
(check-sat)
