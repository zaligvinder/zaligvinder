(declare-const X String)
; (([1-9]|[0][1-9])|1[012])[- /.](([1-9]|[0][1-9])|[12][0-9]|3[01])[- /.](19|20)\d\d
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2"))) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (str.to.re "19") (str.to.re "20")) (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a"))))
; Contact\d+Host\x3A[^\n\r]*User-Agent\x3AHost\x3aMailHost\x3aMSNLOGOVN
(assert (str.in.re X (re.++ (str.to.re "Contact") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:MailHost:MSNLOGOVN\x0a"))))
; User-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:Host:\x0a")))
; ^([GB])*(([1-9]\d{8})|([1-9]\d{11}))$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "G") (str.to.re "B"))) (re.union (re.++ (re.range "1" "9") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 11 11) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
