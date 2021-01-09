(declare-const X String)
; Windows\s+haveFTUser-Agent\x3ADayspassword\x3B0\x3BIncorrect
(assert (str.in.re X (re.++ (str.to.re "Windows") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:Dayspassword;0;Incorrect\x0a"))))
(check-sat)
