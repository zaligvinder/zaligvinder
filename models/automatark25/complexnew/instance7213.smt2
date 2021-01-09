(declare-const X String)
; (NL-?)?[0-9]{9}B[0-9]{2}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "NL") (re.opt (str.to.re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "B") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; Subject\x3aSpywareSpyBuddy
(assert (str.in.re X (str.to.re "Subject:SpywareSpyBuddy\x0a")))
; /\.background\s*=\s*[\x22\x27]{2}/i
(assert (str.in.re X (re.++ (str.to.re "/.background") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/i\x0a"))))
(check-sat)
