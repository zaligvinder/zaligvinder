(declare-const X String)
; kwd\s+User-Agent\x3Aregister\.aspUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "kwd") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:register.aspUser-Agent:\x0a"))))
(check-sat)
