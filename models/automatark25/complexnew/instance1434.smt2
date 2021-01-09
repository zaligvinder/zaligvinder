(declare-const X String)
; href[\s]*=[\s]*"[^\n"]*"
(assert (str.in.re X (re.++ (str.to.re "href") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x22"))) (str.to.re "\x22\x0a"))))
; /filename=[^\n]*\x2eoga/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".oga/i\x0a"))))
; installs\x2Eseekmo\x2Ecom\s+spyblini\x2EiniUpdateUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "installs.seekmo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.iniUpdateUser-Agent:\x0a"))))
(check-sat)
