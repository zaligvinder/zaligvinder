(declare-const X String)
; \{\\\*\\bkmkstart\s(.*?)\}
(assert (not (str.in.re X (re.++ (str.to.re "{\x5c*\x5cbkmkstart") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* re.allchar) (str.to.re "}\x0a")))))
(check-sat)
