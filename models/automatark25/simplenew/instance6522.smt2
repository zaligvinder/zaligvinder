(declare-const X String)
; \x2Fcbn\x2F\s+Host\x3Abinde2give\.com
(assert (not (str.in.re X (re.++ (str.to.re "/cbn/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:binde2give.com\x0a")))))
(check-sat)
