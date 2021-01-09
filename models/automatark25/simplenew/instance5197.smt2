(declare-const X String)
; \x3BCIA\s+is\s+User-Agent\x3Acid=tb\x2eCookie\x3A
(assert (str.in.re X (re.++ (str.to.re ";CIA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:cid=tb.Cookie:\x0a"))))
(check-sat)
