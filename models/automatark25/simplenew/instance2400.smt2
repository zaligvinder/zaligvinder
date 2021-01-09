(declare-const X String)
; Cookie\x3a\s+\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (re.++ (str.to.re "Cookie:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/GRSI|Server|\x13Host:origin=sidefind\x0a"))))
(check-sat)
