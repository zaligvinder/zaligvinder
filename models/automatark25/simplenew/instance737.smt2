(declare-const X String)
; \x22The\s+e2give\.com\s+NETObserve
(assert (str.in.re X (re.++ (str.to.re "\x22The") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "NETObserve\x0a"))))
(check-sat)
