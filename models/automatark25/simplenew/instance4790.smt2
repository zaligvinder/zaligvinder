(declare-const X String)
; LOG\s+spyblini\x2EiniUpdateUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.iniUpdateUser-Agent:\x0a")))))
(check-sat)
