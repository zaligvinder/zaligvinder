(declare-const X String)
; /version\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (not (str.in.re X (re.++ (str.to.re "/version=") (re.union (str.to.re "\x22") (str.to.re "'")) ((_ re.loop 1024 1024) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/\x0a")))))
; dailyinformationHost\x3AI\x3aNAME\x3ainstalls\x2Eseekmo\x2Ecom
(assert (not (str.in.re X (str.to.re "dailyinformationHost:I:NAME:installs.seekmo.com\x0a"))))
; ^0?[0-9]?[0-9]$|^(100)$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "0")) (re.opt (re.range "0" "9")) (re.range "0" "9")) (str.to.re "100\x0a")))))
; ^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,6}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (re.range "1" "8")) (re.range "1" "9")) (re.++ (re.range "1" "9") (str.to.re "0"))) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
