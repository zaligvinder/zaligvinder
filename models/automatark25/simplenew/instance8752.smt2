(declare-const X String)
; Yeah\!\s+ulmxct\x2fmqoyc\s+securityOmFkbWluADROAR
(assert (not (str.in.re X (re.++ (str.to.re "Yeah!") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ulmxct/mqoyc") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "securityOmFkbWluADROAR\x0a")))))
(check-sat)
