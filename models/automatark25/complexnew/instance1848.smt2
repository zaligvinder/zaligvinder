(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a"))))
; User-Agent\x3aUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
; \{\\\*\\bkmkstart\s(.*?)\}
(assert (str.in.re X (re.++ (str.to.re "{\x5c*\x5cbkmkstart") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* re.allchar) (str.to.re "}\x0a"))))
(check-sat)
