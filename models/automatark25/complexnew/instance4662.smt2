(declare-const X String)
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (not (str.in.re X (str.to.re "FTPHost:User-Agent:User:distID=deskwizz.com\x0a"))))
; ^(.*)
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)
