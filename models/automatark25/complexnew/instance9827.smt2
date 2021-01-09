(declare-const X String)
; ^([1-9]|[1-9]\d|100)$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (str.to.re "100")) (str.to.re "\x0a"))))
; www\x2eproventactics\x2ecomKeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (not (str.in.re X (str.to.re "www.proventactics.comKeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a"))))
; ((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.opt (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (re.opt (str.to.re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to.re "."))) (re.union (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.opt (re.union (re.++ (str.to.re "2") (re.range "0" "4")) (re.++ (re.opt (str.to.re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
