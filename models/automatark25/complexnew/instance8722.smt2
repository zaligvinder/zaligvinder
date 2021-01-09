(declare-const X String)
; (SE-?)?[0-9]{12}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "SE") (re.opt (str.to.re "-")))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[ABCGHJMPQRTWXYZ]$
(assert (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "M") (str.to.re "P") (str.to.re "Q") (str.to.re "R") (str.to.re "T") (str.to.re "W") (str.to.re "X") (str.to.re "Y") (str.to.re "Z")) (str.to.re "\x0a"))))
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (str.in.re X (str.to.re "www.onetoolbar.comcommunity\x0a")))
; /filename=[^\n]*\x2ef4p/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4p/i\x0a"))))
; /^\s*?MAIL\s+?FROM\x3a[^\r\n]*?\x28\x29\s\x7b/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MAIL") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "FROM:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "()") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "{/i\x0a"))))
(check-sat)
