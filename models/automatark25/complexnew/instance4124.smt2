(declare-const X String)
; .*[\$Ss]pecia[l1]\W[Oo0]ffer.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "$") (str.to.re "S") (str.to.re "s")) (str.to.re "pecia") (re.union (str.to.re "l") (str.to.re "1")) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "O") (str.to.re "o") (str.to.re "0")) (str.to.re "ffer") (re.* re.allchar) (str.to.re "\x0a")))))
; Contact\d+Host\x3A[^\n\r]*User-Agent\x3AHost\x3aMailHost\x3aMSNLOGOVN
(assert (not (str.in.re X (re.++ (str.to.re "Contact") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:MailHost:MSNLOGOVN\x0a")))))
(check-sat)
