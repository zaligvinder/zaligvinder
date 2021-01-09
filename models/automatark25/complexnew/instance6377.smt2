(declare-const X String)
; ^[5,6]\d{7}|^$
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "5") (str.to.re ",") (str.to.re "6")) ((_ re.loop 7 7) (re.range "0" "9"))) (str.to.re "\x0a")))))
; XP\d+Acme\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3DversionContact
(assert (str.in.re X (re.++ (str.to.re "XP") (re.+ (re.range "0" "9")) (str.to.re "Acme") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cbn/node=Host:?search=versionContact\x0a"))))
; ProAgentHost\x3ALOGSeconds\-
(assert (not (str.in.re X (str.to.re "ProAgentHost:LOGSeconds-\x0a"))))
; Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (not (str.in.re X (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a"))))
(check-sat)
