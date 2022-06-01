(declare-const X String)
; sponsor2\.ucmore\.com\s+informationHost\u{3A}\u{2F}ezsb
(assert (str.in_re X (re.++ (str.to_re "sponsor2.ucmore.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "informationHost:/ezsb\u{a}"))))
; /[a-z]\u{3d}[a-f\d]{126}/P
(assert (str.in_re X (re.++ (str.to_re "/") (re.range "a" "z") (str.to_re "=") ((_ re.loop 126 126) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/P\u{a}"))))
; KeyloggerFSWcmdldap\u{3A}\u{2F}\u{2F}Exploiterconnection\u{2E}www\u{2E}oemji\u{2E}comzopabora\u{2E}infoConnection
(assert (str.in_re X (str.to_re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\u{a}")))
(check-sat)
