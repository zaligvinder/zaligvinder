(declare-const X String)
; ^0?(5[024])(\-)?\d{7}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "0")) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a5") (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4"))))))
; (IE-?)?[0-9][0-9A-Z\+\*][0-9]{5}[A-Z]
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "IE") (re.opt (str.to.re "-")))) (re.range "0" "9") (re.union (re.range "0" "9") (re.range "A" "Z") (str.to.re "+") (str.to.re "*")) ((_ re.loop 5 5) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a")))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (not (str.in.re X (str.to.re "FTPHost:User-Agent:User:distID=deskwizz.com\x0a"))))
; DmInf\x5E\s+Contactfrom=GhostVoiceServerUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "DmInf^") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Contactfrom=GhostVoiceServerUser-Agent:\x0a"))))
; ^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][ ][aApP][mM]){1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "0") (re.range "1" "9")))) ((_ re.loop 1 1) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (str.to.re " ") (re.union (str.to.re "a") (str.to.re "A") (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")))) (str.to.re "\x0a")))))
(check-sat)
