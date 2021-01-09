(declare-const X String)
; forum=.*Explorer\s+Host\x3Aact=Host\x3aUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "forum=") (re.* re.allchar) (str.to.re "Explorer") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:act=Host:User-Agent:\x0a"))))
(check-sat)
