(declare-const X String)
; sponsor2\.ucmore\.com\s+informationHost\x3A\x2Fezsb
(assert (str.in.re X (re.++ (str.to.re "sponsor2.ucmore.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "informationHost:/ezsb\x0a"))))
; /[a-z]\x3d[a-f\d]{126}/P
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 126 126) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
; KeyloggerFSWcmdldap\x3A\x2F\x2FExploiterconnection\x2Ewww\x2Eoemji\x2Ecomzopabora\x2EinfoConnection
(assert (str.in.re X (str.to.re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\x0a")))
(check-sat)
