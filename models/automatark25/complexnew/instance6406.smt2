(declare-const X String)
; c\.goclick\.com[^\n\r]*is\s+URLBlaze
(assert (not (str.in.re X (re.++ (str.to.re "c.goclick.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze\x0a")))))
; ^\([0-9]{3}\)[0-9]{3}(-)[0-9]{4}
(assert (str.in.re X (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; LOG\s+spyblini\x2EiniUpdateUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.iniUpdateUser-Agent:\x0a")))))
(check-sat)
