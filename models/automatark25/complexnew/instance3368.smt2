(declare-const X String)
; [0-9.\-/+() ]{4,}
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " "))) (re.* (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " "))))))
; ^\.{0,2}[\/\\]
(assert (str.in.re X (re.++ ((_ re.loop 0 2) (str.to.re ".")) (re.union (str.to.re "/") (str.to.re "\x5c")) (str.to.re "\x0a"))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (str.in.re X (str.to.re "FTPHost:User-Agent:User:distID=deskwizz.com\x0a")))
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (not (str.in.re X (str.to.re "cyber@yahoo.comconfig.180solutions.com\x0a"))))
(check-sat)
