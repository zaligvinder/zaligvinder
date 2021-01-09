(declare-const X String)
; ZC-Bridge\s+www\x2Ewebcruiser\x2Ecc\x22StealthReferer\x3AContact
(assert (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webcruiser.cc\x22StealthReferer:Contact\x0a"))))
(check-sat)
