(declare-const X String)
; /\x2eafm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.afm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^\d{3,3}\.\d{0,2}$|^E\d{3,3}\.\d{0,2}$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "E") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; (")([0-9]*)(",")([0-9]*)("\))
(assert (str.in.re X (re.++ (str.to.re "\x22") (re.* (re.range "0" "9")) (str.to.re "\x22,\x22") (re.* (re.range "0" "9")) (str.to.re "\x22)\x0a"))))
(check-sat)
