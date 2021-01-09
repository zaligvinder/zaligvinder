(declare-const X String)
; si=\s+ProAgent\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "si=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ProAgent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:as.starware.com\x0a"))))
; ^0?[0-9]?[0-9]$|^(100)$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "0")) (re.opt (re.range "0" "9")) (re.range "0" "9")) (str.to.re "100\x0a")))))
; /\/14\d{8}(.jar)?$/U
(assert (not (str.in.re X (re.++ (str.to.re "//14") ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.++ re.allchar (str.to.re "jar"))) (str.to.re "/U\x0a")))))
(check-sat)
