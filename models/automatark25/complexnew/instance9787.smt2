(declare-const X String)
; /\x2emov([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mov") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (not (str.in.re X (re.++ (str.to.re "Cookie:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ldap://\x0a")))))
; XP\d+Acme\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3DversionContact
(assert (not (str.in.re X (re.++ (str.to.re "XP") (re.+ (re.range "0" "9")) (str.to.re "Acme") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/cbn/node=Host:?search=versionContact\x0a")))))
; ^((0[0-9])|(1[0-2])|(2[1-9])|(3[0-2])|(6[1-9])|(7[0-2])|80)([0-9]{7})$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "2") (re.range "1" "9")) (re.++ (str.to.re "3") (re.range "0" "2")) (re.++ (str.to.re "6") (re.range "1" "9")) (re.++ (str.to.re "7") (re.range "0" "2")) (str.to.re "80")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(([a-zA-Z]\:)|(\\))(\\{1}|((\\{1})[^\\]([^/:*?<>"|]*))+)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (str.to.re "\x5c")) (re.union ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.++ ((_ re.loop 1 1) (str.to.re "\x5c")) (re.comp (str.to.re "\x5c")) (re.* (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "\x22") (str.to.re "|")))))) (str.to.re "\x0a")))))
(check-sat)
